.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6$1;->this$1:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6$1;->this$1:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;

    iget-object p1, p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->isSearchMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6$1;->this$1:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;

    iget-object p1, p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$1600(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStop(Z)V
    .locals 4

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6$1;->this$1:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;

    iget-object p1, p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->isSearchMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6$1;->this$1:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;

    iget-object p1, p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$1600(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    new-array v1, p1, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6$1;->this$1:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;

    iget-object v2, v2, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-static {v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->access$1600(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    new-array p1, p1, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v3, p1, v0

    invoke-interface {v1, v2, p1}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    return-void
.end method
