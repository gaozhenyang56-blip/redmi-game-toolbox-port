.class public final synthetic Lcom/google/android/exoplayer2/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/o;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    iput p2, p0, Lcom/google/android/exoplayer2/ui/o;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/o;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/o;->b:I

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;->k(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;ILandroid/view/View;)V

    return-void
.end method
