.class Lcom/miui/apppredict/activity/FolderSearchActivity$a;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/apppredict/activity/FolderSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/activity/FolderSearchActivity;


# direct methods
.method constructor <init>(Lcom/miui/apppredict/activity/FolderSearchActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$a;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 2
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    iget-object p2, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$a;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p2}, Lcom/miui/apppredict/activity/FolderSearchActivity;->n0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$a;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p2}, Lcom/miui/apppredict/activity/FolderSearchActivity;->n0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object p2, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$a;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p2, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->o0(Lcom/miui/apppredict/activity/FolderSearchActivity;Landroid/view/WindowInsets;)I

    move-result p2

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$a;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->t0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$a;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->u0(Lcom/miui/apppredict/activity/FolderSearchActivity;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$a;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->n0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-object p1
.end method
