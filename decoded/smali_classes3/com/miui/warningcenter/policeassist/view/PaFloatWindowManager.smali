.class public Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PaFloatWindowManager"


# instance fields
.field private final LOCATION_LAYOUT_PARAMS:Landroid/view/WindowManager$LayoutParams;

.field private final PRIVACY_LAYOUT_PARAMS:Landroid/view/WindowManager$LayoutParams;

.field private final mContext:Landroid/content/Context;

.field private mHasLocationView:Z

.field private mLocationView:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

.field private mPrivacyView:Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, -0x96

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, -0x2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x11

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x7d2

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v4, 0x28

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->LOCATION_LAYOUT_PARAMS:Landroid/view/WindowManager$LayoutParams;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v0, -0x32

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->PRIVACY_LAYOUT_PARAMS:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public addView()V
    .locals 5

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mLocationView:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    const-string v1, "add error"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mHasLocationView:Z

    new-instance v0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    iget-object v3, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mLocationView:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    iget-object v3, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->LOCATION_LAYOUT_PARAMS:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mLocationView:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    iget-object v4, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->LOCATION_LAYOUT_PARAMS:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mLocationView:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-virtual {v0, v2}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->setAdded(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mHasLocationView:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mHasLocationView:Z

    :try_start_1
    iget-object v3, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->LOCATION_LAYOUT_PARAMS:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v0, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mLocationView:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-virtual {v0, v2}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->setAdded(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaUtils;->getPoliceAssistToggle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mPrivacyView:Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;

    iget-object v3, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mPrivacyView:Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;

    :try_start_2
    iget-object v3, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->PRIVACY_LAYOUT_PARAMS:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v0, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mPrivacyView:Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;

    invoke-virtual {v0, v2}, Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;->setAdded(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public releaseViews()V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mLocationView:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mLocationView:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mHasLocationView:Z

    :cond_0
    return-void
.end method

.method public removeView()V
    .locals 4

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mLocationView:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    const-string v1, "remove error"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mLocationView:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-interface {v0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mLocationView:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-virtual {v0, v2}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->setAdded(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mHasLocationView:Z

    :cond_1
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mPrivacyView:Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mPrivacyView:Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;

    invoke-interface {v0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mPrivacyView:Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;

    invoke-virtual {v0, v2}, Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;->setAdded(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaFloatWindowManager;->mPrivacyView:Lcom/miui/warningcenter/policeassist/view/PaPrivacyFloatingView;

    :cond_3
    return-void
.end method
