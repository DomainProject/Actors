package ActorLanguage.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConceptPresentationAspectBase;
import jetbrains.mps.smodel.runtime.ConceptPresentation;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.ConceptPresentationBuilder;

public class ConceptPresentationAspectImpl extends ConceptPresentationAspectBase {
  private ConceptPresentation props_ActorAction;
  private ConceptPresentation props_ActorBox;
  private ConceptPresentation props_ActorBoxesList;
  private ConceptPresentation props_ActorLink;
  private ConceptPresentation props_ActorLinksList;
  private ConceptPresentation props_ActorReference;
  private ConceptPresentation props_ActorReferenceList;
  private ConceptPresentation props_ActorScript;
  private ConceptPresentation props_ActorsGraph;
  private ConceptPresentation props_Become;
  private ConceptPresentation props_ChangeFetchPolicy;
  private ConceptPresentation props_CreateActor;
  private ConceptPresentation props_CreateActorReference;
  private ConceptPresentation props_CreateActors;
  private ConceptPresentation props_CreateBehavior;
  private ConceptPresentation props_CreateEnvelope;
  private ConceptPresentation props_CreateMessage;
  private ConceptPresentation props_CreatePayload;
  private ConceptPresentation props_CustomType;
  private ConceptPresentation props_EmptyLine;
  private ConceptPresentation props_Envelope;
  private ConceptPresentation props_ExternalFunction;
  private ConceptPresentation props_ExternalFunctionPrototype;
  private ConceptPresentation props_ExternalType;
  private ConceptPresentation props_ForEachActorReferenceStatement;
  private ConceptPresentation props_GetNeighborsFromReceptionist;
  private ConceptPresentation props_IActor;
  private ConceptPresentation props_IBehavior;
  private ConceptPresentation props_ICreateActor;
  private ConceptPresentation props_IExternalFunction;
  private ConceptPresentation props_IType;
  private ConceptPresentation props_Initializer;
  private ConceptPresentation props_InitializerAction;
  private ConceptPresentation props_Link;
  private ConceptPresentation props_MessageQueue;
  private ConceptPresentation props_MessageRef;
  private ConceptPresentation props_Payload;
  private ConceptPresentation props_RandomActor;
  private ConceptPresentation props_Receptionist;
  private ConceptPresentation props_ReceptionistPolicy;
  private ConceptPresentation props_ReturnActorReference;
  private ConceptPresentation props_SelectEnvelope;
  private ConceptPresentation props_SelectPayload;
  private ConceptPresentation props_SendMessage;
  private ConceptPresentation props_SendMessageToNeighbors;
  private ConceptPresentation props_StatementConstraint;
  private ConceptPresentation props_StringBody;
  private ConceptPresentation props_SwitchPolicy;
  private ConceptPresentation props_Window;

  @Override
  @Nullable
  public ConceptPresentation getDescriptor(SAbstractConcept c) {
    StructureAspectDescriptor structureDescriptor = (StructureAspectDescriptor) myLanguageRuntime.getAspect(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.class);
    switch (structureDescriptor.internalIndex(c)) {
      case LanguageConceptSwitch.ActorAction:
        if (props_ActorAction == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_ActorAction = cpb.create();
        }
        return props_ActorAction;
      case LanguageConceptSwitch.ActorBox:
        if (props_ActorBox == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x262cd812cfe57937L, 0x262cd812cfe57939L, "actor", "", "");
          props_ActorBox = cpb.create();
        }
        return props_ActorBox;
      case LanguageConceptSwitch.ActorBoxesList:
        if (props_ActorBoxesList == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ActorBoxesList");
          props_ActorBoxesList = cpb.create();
        }
        return props_ActorBoxesList;
      case LanguageConceptSwitch.ActorLink:
        if (props_ActorLink == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ActorLink");
          props_ActorLink = cpb.create();
        }
        return props_ActorLink;
      case LanguageConceptSwitch.ActorLinksList:
        if (props_ActorLinksList == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ActorLinksList");
          props_ActorLinksList = cpb.create();
        }
        return props_ActorLinksList;
      case LanguageConceptSwitch.ActorReference:
        if (props_ActorReference == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_ActorReference = cpb.create();
        }
        return props_ActorReference;
      case LanguageConceptSwitch.ActorReferenceList:
        if (props_ActorReferenceList == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_ActorReferenceList = cpb.create();
        }
        return props_ActorReferenceList;
      case LanguageConceptSwitch.ActorScript:
        if (props_ActorScript == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_ActorScript = cpb.create();
        }
        return props_ActorScript;
      case LanguageConceptSwitch.ActorsGraph:
        if (props_ActorsGraph == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ActorsGraph");
          props_ActorsGraph = cpb.create();
        }
        return props_ActorsGraph;
      case LanguageConceptSwitch.Become:
        if (props_Become == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("select next behavior");
          cpb.rawPresentation("become");
          props_Become = cpb.create();
        }
        return props_Become;
      case LanguageConceptSwitch.ChangeFetchPolicy:
        if (props_ChangeFetchPolicy == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("change fetching policy for the actor executing this behavior");
          cpb.rawPresentation("change_fetch_policy");
          props_ChangeFetchPolicy = cpb.create();
        }
        return props_ChangeFetchPolicy;
      case LanguageConceptSwitch.CreateActor:
        if (props_CreateActor == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("create new actor");
          cpb.presentationByName();
          props_CreateActor = cpb.create();
        }
        return props_CreateActor;
      case LanguageConceptSwitch.CreateActorReference:
        if (props_CreateActorReference == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("create reference to existing actor");
          cpb.rawPresentation("create_actor_reference");
          props_CreateActorReference = cpb.create();
        }
        return props_CreateActorReference;
      case LanguageConceptSwitch.CreateActors:
        if (props_CreateActors == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("create group of actors with the same behavior");
          cpb.rawPresentation("create_actors");
          props_CreateActors = cpb.create();
        }
        return props_CreateActors;
      case LanguageConceptSwitch.CreateBehavior:
        if (props_CreateBehavior == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_CreateBehavior = cpb.create();
        }
        return props_CreateBehavior;
      case LanguageConceptSwitch.CreateEnvelope:
        if (props_CreateEnvelope == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("create message envelope");
          cpb.presentationByName();
          props_CreateEnvelope = cpb.create();
        }
        return props_CreateEnvelope;
      case LanguageConceptSwitch.CreateMessage:
        if (props_CreateMessage == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("create new message");
          cpb.presentationByName();
          props_CreateMessage = cpb.create();
        }
        return props_CreateMessage;
      case LanguageConceptSwitch.CreatePayload:
        if (props_CreatePayload == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("create message payload");
          cpb.presentationByName();
          props_CreatePayload = cpb.create();
        }
        return props_CreatePayload;
      case LanguageConceptSwitch.CustomType:
        if (props_CustomType == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_CustomType = cpb.create();
        }
        return props_CustomType;
      case LanguageConceptSwitch.EmptyLine:
        if (props_EmptyLine == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("EmptyLine");
          props_EmptyLine = cpb.create();
        }
        return props_EmptyLine;
      case LanguageConceptSwitch.Envelope:
        if (props_Envelope == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_Envelope = cpb.create();
        }
        return props_Envelope;
      case LanguageConceptSwitch.ExternalFunction:
        if (props_ExternalFunction == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_ExternalFunction = cpb.create();
        }
        return props_ExternalFunction;
      case LanguageConceptSwitch.ExternalFunctionPrototype:
        if (props_ExternalFunctionPrototype == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ExternalFunctionPrototype");
          props_ExternalFunctionPrototype = cpb.create();
        }
        return props_ExternalFunctionPrototype;
      case LanguageConceptSwitch.ExternalType:
        if (props_ExternalType == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_ExternalType = cpb.create();
        }
        return props_ExternalType;
      case LanguageConceptSwitch.ForEachActorReferenceStatement:
        if (props_ForEachActorReferenceStatement == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("iterate on a list of actor references");
          cpb.rawPresentation("for each actor reference");
          props_ForEachActorReferenceStatement = cpb.create();
        }
        return props_ForEachActorReferenceStatement;
      case LanguageConceptSwitch.GetNeighborsFromReceptionist:
        if (props_GetNeighborsFromReceptionist == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("get list of references to linked actors from the receptionist");
          cpb.rawPresentation("GetNeighbors");
          props_GetNeighborsFromReceptionist = cpb.create();
        }
        return props_GetNeighborsFromReceptionist;
      case LanguageConceptSwitch.IActor:
        if (props_IActor == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_IActor = cpb.create();
        }
        return props_IActor;
      case LanguageConceptSwitch.IBehavior:
        if (props_IBehavior == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_IBehavior = cpb.create();
        }
        return props_IBehavior;
      case LanguageConceptSwitch.ICreateActor:
        if (props_ICreateActor == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_ICreateActor = cpb.create();
        }
        return props_ICreateActor;
      case LanguageConceptSwitch.IExternalFunction:
        if (props_IExternalFunction == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_IExternalFunction = cpb.create();
        }
        return props_IExternalFunction;
      case LanguageConceptSwitch.IType:
        if (props_IType == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_IType = cpb.create();
        }
        return props_IType;
      case LanguageConceptSwitch.Initializer:
        if (props_Initializer == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Initializer = cpb.create();
        }
        return props_Initializer;
      case LanguageConceptSwitch.InitializerAction:
        if (props_InitializerAction == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_InitializerAction = cpb.create();
        }
        return props_InitializerAction;
      case LanguageConceptSwitch.Link:
        if (props_Link == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_Link = cpb.create();
        }
        return props_Link;
      case LanguageConceptSwitch.MessageQueue:
        if (props_MessageQueue == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_MessageQueue = cpb.create();
        }
        return props_MessageQueue;
      case LanguageConceptSwitch.MessageRef:
        if (props_MessageRef == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x6ac9b580f420bedcL, 0x6ac9b580f420beddL, "message", "", "");
          props_MessageRef = cpb.create();
        }
        return props_MessageRef;
      case LanguageConceptSwitch.Payload:
        if (props_Payload == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_Payload = cpb.create();
        }
        return props_Payload;
      case LanguageConceptSwitch.RandomActor:
        if (props_RandomActor == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("RandomActor");
          props_RandomActor = cpb.create();
        }
        return props_RandomActor;
      case LanguageConceptSwitch.Receptionist:
        if (props_Receptionist == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Receptionist = cpb.create();
        }
        return props_Receptionist;
      case LanguageConceptSwitch.ReceptionistPolicy:
        if (props_ReceptionistPolicy == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("receptionist_policy");
          props_ReceptionistPolicy = cpb.create();
        }
        return props_ReceptionistPolicy;
      case LanguageConceptSwitch.ReturnActorReference:
        if (props_ReturnActorReference == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("return_actor_reference");
          props_ReturnActorReference = cpb.create();
        }
        return props_ReturnActorReference;
      case LanguageConceptSwitch.SelectEnvelope:
        if (props_SelectEnvelope == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x9de89b125bf6283L, 0x9de89b125bf6284L, "envelope", "", "");
          props_SelectEnvelope = cpb.create();
        }
        return props_SelectEnvelope;
      case LanguageConceptSwitch.SelectPayload:
        if (props_SelectPayload == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x10eda99958984cdeL, 0x9416196c5eca1268L, 0x4658738496c93a82L, 0x4658738496c93a91L, "payload", "", "");
          props_SelectPayload = cpb.create();
        }
        return props_SelectPayload;
      case LanguageConceptSwitch.SendMessage:
        if (props_SendMessage == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("send message");
          cpb.rawPresentation("send_message");
          props_SendMessage = cpb.create();
        }
        return props_SendMessage;
      case LanguageConceptSwitch.SendMessageToNeighbors:
        if (props_SendMessageToNeighbors == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("SendMessageToNeighbors");
          props_SendMessageToNeighbors = cpb.create();
        }
        return props_SendMessageToNeighbors;
      case LanguageConceptSwitch.StatementConstraint:
        if (props_StatementConstraint == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_StatementConstraint = cpb.create();
        }
        return props_StatementConstraint;
      case LanguageConceptSwitch.StringBody:
        if (props_StringBody == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("StringBody");
          props_StringBody = cpb.create();
        }
        return props_StringBody;
      case LanguageConceptSwitch.SwitchPolicy:
        if (props_SwitchPolicy == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("SwitchPolicy");
          props_SwitchPolicy = cpb.create();
        }
        return props_SwitchPolicy;
      case LanguageConceptSwitch.Window:
        if (props_Window == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.shortDesc("store messages and send them when window is full");
          cpb.rawPresentation("window");
          props_Window = cpb.create();
        }
        return props_Window;
    }
    return null;
  }
}
