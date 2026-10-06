.class Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$602(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setApplyBgBlur(Z)V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->updateBackground(Z)V

    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setSupportBlur(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setEnableBlur(Z)V

    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->applyBlur(Z)V

    :cond_2
    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/k;)V
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->isLightTheme:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Ltm/b;->b:[I

    goto :goto_0

    :cond_0
    sget-object v1, Ltm/a;->b:[I

    :goto_0
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lmiuix/view/k;->d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v0, Ltm/d;->a:[I

    goto :goto_1

    :cond_1
    sget-object v0, Ltm/c;->a:[I

    :goto_1
    const/16 v2, 0x42

    invoke-virtual {p1, v1, v0, v2}, Lmiuix/view/k;->k([I[II)V

    return-void
.end method
