.class final Landroidx/preference/PreferenceHeaderFragmentCompat$a;
.super Landroidx/activity/b;
.source "SourceFile"

# interfaces
.implements Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceHeaderFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\u0014\u0010\u000e\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/preference/PreferenceHeaderFragmentCompat$a;",
        "Landroidx/activity/b;",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;",
        "Loj/t;",
        "handleOnBackPressed",
        "Landroid/view/View;",
        "panel",
        "",
        "slideOffset",
        "a",
        "b",
        "c",
        "Landroidx/preference/PreferenceHeaderFragmentCompat;",
        "Landroidx/preference/PreferenceHeaderFragmentCompat;",
        "caller",
        "<init>",
        "(Landroidx/preference/PreferenceHeaderFragmentCompat;)V",
        "preference_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final a:Landroidx/preference/PreferenceHeaderFragmentCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceHeaderFragmentCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "caller"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/activity/b;-><init>(Z)V

    iput-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$a;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    invoke-virtual {p1}, Landroidx/preference/PreferenceHeaderFragmentCompat;->d0()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "panel"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "panel"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/activity/b;->setEnabled(Z)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "panel"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/activity/b;->setEnabled(Z)V

    return-void
.end method

.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/PreferenceHeaderFragmentCompat$a;->a:Landroidx/preference/PreferenceHeaderFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->d0()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    return-void
.end method
