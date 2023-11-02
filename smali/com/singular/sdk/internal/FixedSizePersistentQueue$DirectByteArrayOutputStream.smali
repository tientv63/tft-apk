.class Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "FixedSizePersistentQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/FixedSizePersistentQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectByteArrayOutputStream"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public getArray()[B
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;->buf:[B

    return-object v0
.end method
