.class public final synthetic Landroid/media/MediaParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public static varargs native synthetic create(Landroid/media/MediaParser$OutputConsumer;[Ljava/lang/String;)Landroid/media/MediaParser;
    .param p0    # Landroid/media/MediaParser$OutputConsumer;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public static native synthetic createByName(Ljava/lang/String;Landroid/media/MediaParser$OutputConsumer;)Landroid/media/MediaParser;
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/media/MediaParser$OutputConsumer;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method


# virtual methods
.method public native synthetic advance(Landroid/media/MediaParser$SeekableInputReader;)Z
    .param p1    # Landroid/media/MediaParser$SeekableInputReader;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native synthetic getParserName()Ljava/lang/String;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic release()V
.end method

.method public native synthetic seek(Landroid/media/MediaParser$SeekPoint;)V
    .param p1    # Landroid/media/MediaParser$SeekPoint;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public native synthetic setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method
