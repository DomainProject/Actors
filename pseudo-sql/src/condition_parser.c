#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "condition_parser.h"
#include "utils.h"

SimpleCondition *create_s_condition(const char *col_name, Operator op, const char *value) {
    SimpleCondition *cond = malloc(sizeof(SimpleCondition));
    if (!cond) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }
    cond->column = strdup(col_name);
    cond->operator = op;
    cond->value = strdup(value);
    return cond;
}

MultipleCondition *create_m_condition(Condition *left, Condition *right, LogicalOperator op) {
    MultipleCondition *mcond = malloc(sizeof(MultipleCondition));
    if (!mcond) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }
    mcond->left = left;
    mcond->right = right;
    mcond->logical_operator = op;
    return mcond;
}

Operator get_operator(char *op_str) {
    if (!strcmp(op_str, ">")) return OPERATOR_GR;
    if (!strcmp(op_str, "<")) return OPERATOR_LO;
    if (!strcmp(op_str, ">=")) return OPERATOR_GE;
    if (!strcmp(op_str, "<=")) return OPERATOR_LE;
    if (!strcmp(op_str, "==")) return OPERATOR_EQ;
    if (!strcmp(op_str, "!=")) return OPERATOR_NE;
    return OPERATOR_INVALID; 
}

LogicalOperator get_logical_operator(const char *op_str) {
    if (!strcmp(op_str, " && ")) return LOPERATOR_AND;
    if (!strcmp(op_str, " || ")) return LOPERATOR_OR;
    return LOPERATOR_INVALID; 
}

SimpleCondition *parse_simple_condition(const char *condition_str) {
    char *tokens[3];
    char buffer[MAX_CONDITION_LENGTH];
    strcpy(buffer, condition_str);

    char *first_space = strchr(buffer, ' ');
    if (!first_space) {
        fprintf(stderr, "Invalid simple condition format: %s\n", condition_str);
        exit(EXIT_FAILURE);
    }

    *first_space = '\0';
    tokens[0] = buffer;

    char *second_space = strchr(first_space + 1, ' ');
    if (!second_space) {
        fprintf(stderr, "Invalid simple condition format: %s\n", condition_str);
        exit(EXIT_FAILURE);
    }

    *second_space = '\0';
    tokens[1] = first_space + 1;
    tokens[2] = second_space + 1;

    Operator op = get_operator(tokens[1]);
    if (op == OPERATOR_INVALID) {
        fprintf(stderr, "Operator not recognized: %s\n", tokens[1]);
        exit(EXIT_FAILURE);
    }

    return create_s_condition(tokens[0], op, tokens[2]);
}

Condition *parse_parenthesis_condition(char **condition_string) {
    char *start = *condition_string;
    int open_parentheses = 1;
    char *end = start + 1;

    while (*end && (*end != '&' || *end != '|')) {
        if (*end == '(') {
            open_parentheses++;
        } else if (*end == ')') {
            open_parentheses--;
        }
        end++;
    }

    if (open_parentheses != 0) {
        fprintf(stderr, "Parenthesis mismatch\n");
        return NULL;
    }

    char *inner_condition = strndup(start + 1, end - start - 2);
    *condition_string = end; 
    Condition *result = ParseCondition(&inner_condition);

    return result;
}

Condition *ParseCondition(char **condition_string) {
    while (**condition_string == ' ') (*condition_string)++;

    Condition *left_condition = NULL;

    if (**condition_string == '(') {
        left_condition = parse_parenthesis_condition(condition_string);
    } else {
        char *token_end = strpbrk(*condition_string, "&|)");
        char token[MAX_CONDITION_LENGTH];
        if (token_end) {
            strncpy(token, *condition_string, token_end - *condition_string);
            token[token_end - *condition_string] = '\0';
        } else {
            strcpy(token, *condition_string);
        }
        
        left_condition = malloc(sizeof(Condition));
        if (!left_condition) {
            perror("malloc");
            exit(EXIT_FAILURE);
        }
        left_condition->type = SIMPLE_CONDITION;
        left_condition->condition.simple_condition = *parse_simple_condition(token);
        *condition_string += strlen(token);
    }

    if (!left_condition) {
        fprintf(stderr, "Error in parsing condition\n");
        return NULL;
    }

    while (**condition_string == ' ') (*condition_string)++;

    if (**condition_string == '\0' || **condition_string == ')') {
        return left_condition;  // no logical operator
    }

    LogicalOperator logical_operator;
    if (strncmp(*condition_string, "&&", 2) == 0) {
        logical_operator = LOPERATOR_AND;
        *condition_string += 2;
    } else if (strncmp(*condition_string, "||", 2) == 0) {
        logical_operator = LOPERATOR_OR;
        *condition_string += 2;
    } else {
        fprintf(stderr, "Logical operator not recognized\n");
        return NULL;
    }

    while (**condition_string == ' ') (*condition_string)++;

    Condition *right_condition = ParseCondition(condition_string);

    if (!right_condition) {
        free(left_condition);
        return NULL;
    }

    Condition *multiple_condition = malloc(sizeof(Condition));
    if (!multiple_condition) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }
    multiple_condition->type = MULTIPLE_CONDITION;
    multiple_condition->condition.multiple_condition = *create_m_condition(left_condition, right_condition, logical_operator);

    return multiple_condition;
}

RowElement *get_element_from_row(Row *row, const char *col_name) {
    for (int i = 0; i < row->num_elements; ++i) {
        if (strcmp(row->elements[i].col_name, col_name) == 0) {
            return &row->elements[i];
        }
    }
    return NULL;
}

int evaluate_simple_condition_int(int col_value, Operator operator, int value) {
    switch (operator) {
        case OPERATOR_GR:
            return col_value > value;
        case OPERATOR_LO:
            return col_value < value;
        case OPERATOR_GE:
            return col_value >= value;
        case OPERATOR_LE:
            return col_value <= value;
        case OPERATOR_EQ:
            return col_value == value;
        case OPERATOR_NE:
            return col_value != value;
        default:
            return 0;
    }
}

int evaluate_simple_condition_long(long col_value, Operator operator, long value) {
    switch (operator) {
        case OPERATOR_GR:
            return col_value > value;
        case OPERATOR_LO:
            return col_value < value;
        case OPERATOR_GE:
            return col_value >= value;
        case OPERATOR_LE:
            return col_value <= value;
        case OPERATOR_EQ:
            return col_value == value;
        case OPERATOR_NE:
            return col_value != value;
        default:
            return 0;
    }
}

int evaluate_simple_condition_float(float col_value, Operator operator, float value) {
    switch (operator) {
        case OPERATOR_GR:
            return col_value > value;
        case OPERATOR_LO:
            return col_value < value;
        case OPERATOR_GE:
            return col_value >= value;
        case OPERATOR_LE:
            return col_value <= value;
        case OPERATOR_EQ:
            return col_value == value;
        case OPERATOR_NE:
            return col_value != value;
        default:
            return 0;
    }
}

int evaluate_simple_condition_string(char *col_value, Operator operator, char *value) {
    switch (operator) {
        case OPERATOR_EQ:
            return !strcmp(col_value, value);
        case OPERATOR_NE:
            if (strcmp(col_value, value))
                return 1;
            return 0;
        default:
            return 0;
    }
}

int evaluate_simple_condition(SimpleCondition *condition, Row *row) {
    RowElement *row_element = get_element_from_row(row, condition->column);
    if (row_element == NULL) {
        return 0;
    }
    switch (row_element->type) {
        case TYPE_INT:
            return evaluate_simple_condition_int(row_element->value.int_value, condition->operator, atoi(condition->value));
        case TYPE_LONG:
            if (is_valid_date_format(condition->value)) {
                return evaluate_simple_condition_long(row_element->value.long_value, condition->operator, convert_to_unix_timestamp(condition->value));
            }
            return evaluate_simple_condition_long(row_element->value.long_value, condition->operator, atol(condition->value));
        case TYPE_FLOAT:
            return evaluate_simple_condition_float(row_element->value.float_value, condition->operator, atof(condition->value));
        default:
            return evaluate_simple_condition_string(row_element->value.string_value, condition->operator, condition->value);
    }
}

int EvaluateCondition(Condition *condition, Row *row) {
    int ret;
    switch (condition->type) {
        case SIMPLE_CONDITION:
            ret = evaluate_simple_condition(&condition->condition.simple_condition, row);

            #ifdef DEBUG
            printf("Evaluation of condition\n");
            print_condition(condition);
            printf("on row:\n");
            PrintRow(row);
            printf("returned %d\n", ret);
            #endif

            return ret;

        case MULTIPLE_CONDITION:
            switch (condition->condition.multiple_condition.logical_operator)
            {
            case LOPERATOR_AND:
                return EvaluateCondition(condition->condition.multiple_condition.left, row) && EvaluateCondition(condition->condition.multiple_condition.right, row);
            case LOPERATOR_OR:
                return EvaluateCondition(condition->condition.multiple_condition.left, row) || EvaluateCondition(condition->condition.multiple_condition.right, row);
            default:
                fprintf(stderr, "Unknown logical operator\n");
                return -1;
            }
            break;

        default:
            fprintf(stderr, "Unknown condition type\n");
            return -1;

    }
}


/* DEBUG */

void print_condition(Condition *condition) {
    if (!condition) return;
    switch (condition->type) {
        case SIMPLE_CONDITION:
            printf("Simple Condition: %s ", condition->condition.simple_condition.column);
            switch (condition->condition.simple_condition.operator) {
                case OPERATOR_GR:
                    printf(" > ");
                    break;
                case OPERATOR_LO:
                    printf(" < ");
                    break;
                case OPERATOR_GE:
                    printf(" >= ");
                    break;
                case OPERATOR_LE:
                    printf(" <= ");
                    break;
                case OPERATOR_EQ:
                    printf(" == ");
                    break;
                case OPERATOR_NE:
                    printf(" != ");
                    break;
                default:
                    fprintf(stderr, "Unknown operator\n");
                    break;
            }
            printf(" %s\n", condition->condition.simple_condition.value);
            break;
        case MULTIPLE_CONDITION:
            printf("Multiple Condition: (\n");
            print_condition(condition->condition.multiple_condition.left);
            printf(") ");
            switch (condition->condition.multiple_condition.logical_operator) {
                case LOPERATOR_AND:
                    printf("AND\n");
                    break;
                case LOPERATOR_OR:
                    printf("OR\n");
                    break;
                case LOPERATOR_INVALID:
                    fprintf(stderr, "Logical operator not recognized\n");
                    exit(EXIT_FAILURE);
            }
            printf("(\n");
            print_condition(condition->condition.multiple_condition.right);
            printf(")\n");
            break;
    }
}

void free_condition(Condition *condition) {
    if (!condition) return;
    switch (condition->type) {
        case SIMPLE_CONDITION:
            free(condition->condition.simple_condition.column);
            free(condition->condition.simple_condition.value);
            break;
        case MULTIPLE_CONDITION:
            free_condition(condition->condition.multiple_condition.left);
            free_condition(condition->condition.multiple_condition.right);
            break;
    }
    free(condition);
}
