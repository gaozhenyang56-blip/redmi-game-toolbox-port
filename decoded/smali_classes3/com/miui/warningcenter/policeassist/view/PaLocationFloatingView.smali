.class public Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "PaLocationFloatingView"


# instance fields
.field private flowTipsText:Landroid/widget/TextView;

.field private isAdded:Z

.field private locationStatus:Landroid/widget/TextView;

.field private locationText:Landroid/widget/TextView;

.field private mContainerLocation:Landroid/widget/LinearLayout;

.field private mContainerLocationStatus:Landroid/widget/LinearLayout;

.field private mContainerflowTips:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDownX:I

.field private mDownY:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private moveAfterX:I

.field private moveAfterY:I

.field private moveBeforeX:I

.field private moveBeforeY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->locationText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mContainerLocation:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mContainerLocationStatus:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mContainerflowTips:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->locationStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->flowTipsText:Landroid/widget/TextView;

    return-object p0
.end method

.method private doLocateAndSendMessage()V
    .locals 3

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mContainerflowTips:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/utils/MsgObservable;->sendEmptyMessage(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/warningcenter/policeassist/PaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_send_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0569

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0424

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->flowTipsText:Landroid/widget/TextView;

    const v0, 0x7f0b06ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mContainerflowTips:Landroid/widget/LinearLayout;

    const v0, 0x7f0b06ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mContainerLocation:Landroid/widget/LinearLayout;

    const v0, 0x7f0b06f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mContainerLocationStatus:Landroid/widget/LinearLayout;

    const v0, 0x7f0b071b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->locationStatus:Landroid/widget/TextView;

    const v0, 0x7f0b071c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->locationText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mContainerflowTips:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mContainerLocation:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaUtils;->getPoliceAssistToggle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->flowTipsText:Landroid/widget/TextView;

    const v1, 0x7f121c45

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->doLocateAndSendMessage()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->flowTipsText:Landroid/widget/TextView;

    const v1, 0x7f121c49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isAdded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->isAdded:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/MsgObservable;->getInstance()Lcom/miui/earthquakewarning/utils/MsgObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveAfterX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveAfterY:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveAfterX:I

    iget v1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveBeforeX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveAfterY:I

    iget v2, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveBeforeY:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveAfterX:I

    iput p1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveBeforeX:I

    iget p1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveAfterY:I

    iput p1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveBeforeY:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mDownX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_3

    iget v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mDownY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, v1, :cond_3

    const-string p1, "PaLocationFloatingView"

    const-string v0, "doLocateAndSendMessage click!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->doLocateAndSendMessage()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveBeforeX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveBeforeY:I

    iget v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->moveBeforeX:I

    iput v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mDownX:I

    iput p1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->mDownY:I

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->isAdded:Z

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    instance-of p1, p2, Landroid/os/Message;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/os/Message;

    new-instance p1, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;

    invoke-direct {p1, p0, p2}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;-><init>(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;Landroid/os/Message;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
