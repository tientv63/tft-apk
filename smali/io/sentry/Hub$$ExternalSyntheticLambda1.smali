.class public final synthetic Lio/sentry/Hub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/ITransaction;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/Hub$$ExternalSyntheticLambda1;->f$0:Lio/sentry/ITransaction;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/Hub$$ExternalSyntheticLambda1;->f$0:Lio/sentry/ITransaction;

    invoke-static {v0, p1}, Lio/sentry/Hub;->lambda$createTransaction$1(Lio/sentry/ITransaction;Lio/sentry/Scope;)V

    return-void
.end method
