.class public final synthetic Lcom/google/android/exoplayer2/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->a:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->a:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->f(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
