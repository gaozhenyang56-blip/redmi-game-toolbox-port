.class public abstract Landroidx/heifwriter/HeifEncoder$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/heifwriter/HeifEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/heifwriter/HeifEncoder;)V
    .param p1    # Landroidx/heifwriter/HeifEncoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract b(Landroidx/heifwriter/HeifEncoder;Ljava/nio/ByteBuffer;)V
    .param p1    # Landroidx/heifwriter/HeifEncoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract c(Landroidx/heifwriter/HeifEncoder;Landroid/media/MediaCodec$CodecException;)V
    .param p1    # Landroidx/heifwriter/HeifEncoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaCodec$CodecException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract d(Landroidx/heifwriter/HeifEncoder;Landroid/media/MediaFormat;)V
    .param p1    # Landroidx/heifwriter/HeifEncoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
