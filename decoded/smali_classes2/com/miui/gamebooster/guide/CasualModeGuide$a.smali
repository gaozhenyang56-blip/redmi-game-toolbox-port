.class final Lcom/miui/gamebooster/guide/CasualModeGuide$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/guide/CasualModeGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/view/WindowManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroid/view/WindowManager$LayoutParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ls8/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;Ls8/h;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/WindowManager$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ls8/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowManager"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockWindowManager"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->c:Landroid/view/WindowManager$LayoutParams;

    iput-object p4, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->d:Ls8/h;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Ls8/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->d:Ls8/h;

    return-object v0
.end method

.method public final c()Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->c:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->d:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->Y()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->d:Ls8/h;

    invoke-virtual {v1}, Ls8/h;->X()Lcom/miui/dock/sidebar/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final e()Landroid/view/WindowManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->b:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->d:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->X()Lcom/miui/dock/sidebar/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->d:Ls8/h;

    invoke-virtual {v0}, Ls8/h;->X()Lcom/miui/dock/sidebar/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method
