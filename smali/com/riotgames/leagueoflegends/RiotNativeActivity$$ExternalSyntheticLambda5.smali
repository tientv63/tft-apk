.class public final synthetic Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/Attachment;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/Attachment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda5;->f$0:Lio/sentry/Attachment;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 1

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda5;->f$0:Lio/sentry/Attachment;

    invoke-static {v0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->lambda$sentryAddAttachment$1(Lio/sentry/Attachment;Lio/sentry/Scope;)V

    return-void
.end method
