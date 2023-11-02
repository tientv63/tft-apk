.class public final Lio/sentry/SentryInstantDateProvider;
.super Ljava/lang/Object;
.source "SentryInstantDateProvider.java"

# interfaces
.implements Lio/sentry/SentryDateProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()Lio/sentry/SentryDate;
    .locals 1

    .line 9
    new-instance v0, Lio/sentry/SentryInstantDate;

    invoke-direct {v0}, Lio/sentry/SentryInstantDate;-><init>()V

    return-object v0
.end method
