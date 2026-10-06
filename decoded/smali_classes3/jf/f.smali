.class public final Ljf/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lmiuix/slidingwidget/widget/SlidingButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/miui/gamebooster/videobox/view/MarqueeTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lmiuix/slidingwidget/widget/SlidingButton;Lcom/miui/gamebooster/videobox/view/MarqueeTextView;)V
    .locals 0
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lmiuix/slidingwidget/widget/SlidingButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/miui/gamebooster/videobox/view/MarqueeTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljf/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Ljf/f;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Ljf/f;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p4, p0, Ljf/f;->d:Lcom/miui/gamebooster/videobox/view/MarqueeTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Ljf/f;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b05db

    invoke-static {p0, v0}, La1/a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const v0, 0x7f0b09dc

    invoke-static {p0, v0}, La1/a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz v2, :cond_0

    const v0, 0x7f0b0c2b

    invoke-static {p0, v0}, La1/a;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/videobox/view/MarqueeTextView;

    if-eqz v3, :cond_0

    new-instance v0, Ljf/f;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Ljf/f;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lmiuix/slidingwidget/widget/SlidingButton;Lcom/miui/gamebooster/videobox/view/MarqueeTextView;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljf/f;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0e01be

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Ljf/f;->a(Landroid/view/View;)Ljf/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Ljf/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
