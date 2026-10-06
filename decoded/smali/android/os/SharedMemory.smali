.class public final synthetic Landroid/os/SharedMemory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public static native synthetic unmap(Ljava/nio/ByteBuffer;)V
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method


# virtual methods
.method public native synthetic getSize()I
.end method

.method public native synthetic mapReadOnly()Ljava/nio/ByteBuffer;
    .annotation build Landroid/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method
