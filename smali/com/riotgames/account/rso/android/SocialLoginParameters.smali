.class public Lcom/riotgames/account/rso/android/SocialLoginParameters;
.super Ljava/lang/Object;
.source "SocialLoginParameters.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field googleTokenOAuthId:Ljava/lang/String;

.field platform:I

.field scopes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/riotgames/account/rso/android/SocialLoginParameters;->platform:I

    .line 17
    iput-object p2, p0, Lcom/riotgames/account/rso/android/SocialLoginParameters;->googleTokenOAuthId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/riotgames/account/rso/android/SocialLoginParameters;->scopes:[Ljava/lang/String;

    return-void
.end method
