.class public abstract Lcom/singular/sdk/internal/GeneralHttpServiceBase;
.super Ljava/lang/Object;
.source "GeneralHttpServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;
    }
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/singular/sdk/internal/GeneralHttpServiceBase;->baseUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/singular/sdk/internal/GeneralHttpServiceBase;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;",
            ")V"
        }
    .end annotation
.end method
