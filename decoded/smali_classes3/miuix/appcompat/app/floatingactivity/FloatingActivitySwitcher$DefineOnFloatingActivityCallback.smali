.class Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefineOnFloatingActivityCallback"
.end annotation


# instance fields
.field protected mActivityIdentity:Ljava/lang/String;

.field protected mActivityTaskId:I

.field final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityIdentity:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityTaskId:I

    return-void
.end method

.method private addLastActivityPanel(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getLastActivityPanel()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->clear()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private checkFinishEnable(I)Z
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$600(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private shouldTopFloatingClose(I)Z
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method protected checkActivity(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public closeAllPage()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected getActivityIdentity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityIdentity:Ljava/lang/String;

    return-object v0
.end method

.method protected getActivityTaskId()I
    .locals 1

    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityTaskId:I

    return v0
.end method

.method public getPageCount()I
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSnapShotAndSetPanel(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_0
    invoke-static {v1, p1}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->generateSnapShotView(Landroid/content/Context;Lmiuix/appcompat/app/AppCompatActivity;)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    if-nez v3, :cond_1

    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    :cond_1
    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->setLastActivityPanel(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->addLastActivityPanel(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_2
    return-void
.end method

.method public isFirstPage()Z
    .locals 6

    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isFirstPageEnterAnimExecuteEnable()Z
    .locals 7

    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v1, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v4

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v6}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    if-le v5, v1, :cond_1

    return v4

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    :goto_0
    if-nez v2, :cond_5

    return v1

    :cond_5
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    :cond_6
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-nez v2, :cond_7

    return v1

    :cond_7
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$100(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_8
    return v1
.end method

.method public isFirstPageExitAnimExecuteEnable()Z
    .locals 5

    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method public markActivityOpenEnterAnimExecuted(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$900(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    return-void
.end method

.method public onDragStart()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$800(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->checkFinishEnable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->shouldTopFloatingClose(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$500(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->closeAllFloatingPage(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public onHideBehindPage()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$800(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    return-void
.end method
