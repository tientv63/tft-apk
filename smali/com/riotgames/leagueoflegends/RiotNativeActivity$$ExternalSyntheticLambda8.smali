.class public final synthetic Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 6

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->lambda$sentrySetAppContext$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/Scope;)V

    return-void
.end method
