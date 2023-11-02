.class public final synthetic Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/SentryOptions$BeforeSendCallback;


# instance fields
.field public final synthetic f$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda2;->f$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    return-void
.end method


# virtual methods
.method public final execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 1

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda2;->f$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-static {v0, p1, p2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->$r8$lambda$eb2TFDE39-IPubD2sCoriJ9C4io(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object p1

    return-object p1
.end method
