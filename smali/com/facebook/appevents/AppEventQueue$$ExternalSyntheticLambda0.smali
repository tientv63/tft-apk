.class public final synthetic Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field public final synthetic f$1:Lcom/facebook/appevents/SessionEventsState;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/appevents/SessionEventsState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventQueue$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/appevents/SessionEventsState;

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventQueue;->$r8$lambda$sd4B-aPUW1l6UMzkuV6STkQe4uo(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V

    return-void
.end method
