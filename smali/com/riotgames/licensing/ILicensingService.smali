.class public interface abstract Lcom/riotgames/licensing/ILicensingService;
.super Ljava/lang/Object;
.source "ILicensingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/licensing/ILicensingService$Stub;,
        Lcom/riotgames/licensing/ILicensingService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.riotgames.licensing.ILicensingService"


# virtual methods
.method public abstract checkLicense(JLjava/lang/String;Lcom/riotgames/licensing/ILicenseResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
