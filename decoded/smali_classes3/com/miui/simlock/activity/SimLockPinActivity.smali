.class public Lcom/miui/simlock/activity/SimLockPinActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/simlock/activity/SimLockPinActivity$c;,
        Lcom/miui/simlock/activity/SimLockPinActivity$d;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Lmiuix/appcompat/app/ActionBar;

.field private h:Lmiuix/appcompat/app/AlertDialog;

.field private i:Landroid/content/Context;

.field private j:Lmiui/telephony/SubscriptionManager;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lfg/e;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private final x:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final y:Landroid/content/BroadcastReceiver;

.field private final z:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->l:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->m:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->w:Z

    new-instance v0, Lgg/e;

    invoke-direct {v0, p0}, Lgg/e;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;)V

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->x:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v0, Lcom/miui/simlock/activity/SimLockPinActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/simlock/activity/SimLockPinActivity$a;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;)V

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->y:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/simlock/activity/SimLockPinActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/simlock/activity/SimLockPinActivity$b;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;)V

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->z:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic A0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->f:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic B0(Lcom/miui/simlock/activity/SimLockPinActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->v:Z

    return p0
.end method

.method static synthetic C0(Lcom/miui/simlock/activity/SimLockPinActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->v:Z

    return p1
.end method

.method private D0(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private E0()I
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x8

    const-string v2, ""

    if-ne v0, v1, :cond_0

    :try_start_1
    iget v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->s:I

    invoke-static {v0, v2, v2}, Lcom/miui/simlock/c;->v(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->s:I

    invoke-static {v0, v2}, Lcom/miui/simlock/c;->u(ILjava/lang/String;)[I

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimLockPinActivity::getRemainingAttempts error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLockPinActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private F0(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private synthetic G0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/simlock/activity/SimLockPinActivity;->O0()V

    return-void
.end method

.method private synthetic H0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->m:Ljava/util/Map;

    iget v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfg/e;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lfg/e;->a:Lr1/a;

    sget-object v2, Lr1/a;->b:Lr1/a;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "SimLockPinActivity"

    const-string v1, "sim state error!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_2
    return-void
.end method

.method private synthetic I0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private static synthetic J0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "key_pin_lock_dialog_cancel"

    invoke-static {p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic K0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "key_pin_lock_dialog_confirm"

    invoke-static {p2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->X0(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->V0(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic L0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "key_puk_lock_dialog_cancel"

    invoke-static {p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic M0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "key_puk_lock_dialog_confirm"

    invoke-static {p2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    const/4 p2, 0x6

    iput p2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    iput-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->n:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->P0(Z)V

    return-void
.end method

.method private synthetic N0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private O0()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimLockPinActivity::onConfirmButtonClick::mUIFunctionState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLockPinActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    const/16 v2, 0x8

    const/4 v3, 0x5

    if-lt v1, v2, :cond_1

    iget v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->t:I

    if-gt v2, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->R0(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x4

    const/4 v4, 0x1

    if-gt v1, v2, :cond_2

    iget v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->t:I

    if-ne v2, v4, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->Q0(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v2, 0x6

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->n:Ljava/lang/String;

    iput v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v5, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->u:Z

    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->p:I

    if-ne v1, v3, :cond_3

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-direct {p0, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->W0(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->Y0(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    iput-boolean v4, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->u:Z

    invoke-direct {p0, v4}, Lcom/miui/simlock/activity/SimLockPinActivity;->P0(Z)V

    goto :goto_1

    :pswitch_2
    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->o:Ljava/lang/String;

    const/4 v0, 0x7

    iput v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    :goto_0
    invoke-direct {p0, v5}, Lcom/miui/simlock/activity/SimLockPinActivity;->P0(Z)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->X0(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->V0(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private P0(Z)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimLockPinActivity::refreshView::mUIFunctionState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLockPinActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->a:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/simlock/activity/SimLockPinActivity;->E0()I

    move-result v0

    iput v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->t:I

    const/4 v2, 0x0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimLockPinActivity::refreshView::mRemainingAttempts = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->t:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    iget v6, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->r:I

    if-ne v5, v6, :cond_2

    move-object v0, v4

    :cond_3
    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_5

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121667

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->r:I

    add-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->c:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    const v3, 0x7f10012b

    const v5, 0x7f121681

    const v6, 0x7f121682

    const/4 v7, 0x2

    const/16 v8, 0x8

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->g:Lmiuix/appcompat/app/ActionBar;

    const v1, 0x7f121692

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f121690

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->b:Landroid/widget/EditText;

    const v1, 0x7f12168f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10012c

    iget v3, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->t:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->g:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1, v6}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f12166b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    :cond_6
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->g:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f121680

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->u:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12167f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->t:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->g:Lmiuix/appcompat/app/ActionBar;

    const v5, 0x7f12168d

    invoke-virtual {v1, v5}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12168b

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v7, v2

    const/16 v0, 0x4d2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->b:Landroid/widget/EditText;

    const v1, 0x7f12168a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->t:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_6

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->t:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private Q0(Ljava/lang/String;)V
    .locals 5

    const-string v0, "key_pin_lock_dialog_show"

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121689

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f121688

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgg/h;

    invoke-direct {v2}, Lgg/h;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121687

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgg/i;

    invoke-direct {v2, p0, p1}, Lgg/i;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->h:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private R0(Ljava/lang/String;)V
    .locals 6

    const-string v0, "key_puk_lock_dialog_show"

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12168e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->t:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f10012a

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgg/k;

    invoke-direct {v2}, Lgg/k;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121687

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgg/l;

    invoke-direct {v2, p0, p1}, Lgg/l;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->h:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private S0()V
    .locals 3

    const-string v0, "key_sim_lock_tragedy"

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12167a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121679

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121687

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgg/j;

    invoke-direct {v2, p0}, Lgg/j;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->h:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private T0(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sim_lock_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/simlock/activity/SimLockDoneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->p:I

    const-string v2, "pin_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sim_pin_set"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->k:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "slot_ids"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private U0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->k:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->r:I

    iget-object v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->m:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg/e;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->a:Ljava/lang/String;

    iget v2, v0, Lfg/e;->c:I

    iput v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->s:I

    iget-object v0, v0, Lfg/e;->a:Lr1/a;

    sget-object v2, Lr1/a;->c:Lr1/a;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    goto :goto_1

    :cond_0
    sget-object v2, Lr1/a;->d:Lr1/a;

    if-ne v0, v2, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/miui/simlock/activity/SimLockPinActivity;->P0(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->i:Landroid/content/Context;

    const/16 v2, 0x2766

    invoke-static {v0, v2}, Lfg/h;->a(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private V0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/miui/simlock/activity/SimLockPinActivity$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/simlock/activity/SimLockPinActivity$d;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;Lcom/miui/simlock/activity/SimLockPinActivity$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private W0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/miui/simlock/activity/SimLockPinActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/simlock/activity/SimLockPinActivity$c;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;Lcom/miui/simlock/activity/SimLockPinActivity$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private X0(Ljava/lang/String;)V
    .locals 6

    const-string v0, "SimLockPinActivity"

    :try_start_0
    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->s:I

    invoke-static {v1, p1}, Lcom/miui/simlock/c;->u(ILjava/lang/String;)[I

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimLockSetActivity::verifySimPin::result[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " result[1] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v2, v1, v3

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->i:Landroid/content/Context;

    iget v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->s:I

    const/16 v4, 0xc

    invoke-static {v1, p1, v2, v3, v4}, Lcom/miui/simlock/c;->q(Landroid/content/Context;Ljava/lang/String;IZI)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12168c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/miui/simlock/activity/SimLockPinActivity;->U0()V

    goto :goto_0

    :cond_0
    aget p1, v1, v4

    if-lez p1, :cond_1

    invoke-direct {p0, v4}, Lcom/miui/simlock/activity/SimLockPinActivity;->P0(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "sim_lock_enable"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_2

    const/16 p1, 0x8

    iput p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    invoke-direct {p0, v3}, Lcom/miui/simlock/activity/SimLockPinActivity;->P0(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimLockSetActivity::verifyPin::verify pin fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private Y0(Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    const-string v1, "SimLockPinActivity"

    :try_start_0
    iget v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->s:I

    iget-object v3, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->n:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/miui/simlock/c;->v(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimLockSetActivity::verifySimPuk::mFlowFunctionState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " result[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " result[1] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xc

    aget v6, v2, v4

    const/16 v7, 0x8

    if-nez v6, :cond_5

    iget v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->p:I

    if-eq v0, v7, :cond_4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->V0(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/16 v3, 0xa

    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->T0(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/16 v3, 0xb

    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->V0(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/miui/simlock/activity/SimLockPinActivity;->U0()V

    :goto_1
    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f121691

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->i:Landroid/content/Context;

    iget v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->s:I

    invoke-static {v0, p1, v2, v4, v3}, Lcom/miui/simlock/c;->q(Landroid/content/Context;Ljava/lang/String;IZI)V

    goto :goto_2

    :cond_5
    aget p1, v2, v5

    if-lez p1, :cond_6

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->o:Ljava/lang/String;

    iput v7, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    invoke-direct {p0, v5}, Lcom/miui/simlock/activity/SimLockPinActivity;->P0(Z)V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/miui/simlock/activity/SimLockPinActivity;->S0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimLockPinActivity::verifySimPuk::verify puk fail : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static synthetic c0(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/simlock/activity/SimLockPinActivity;->M0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->J0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/simlock/activity/SimLockPinActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->I0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/simlock/activity/SimLockPinActivity;->K0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/simlock/activity/SimLockPinActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/simlock/activity/SimLockPinActivity;->N0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->L0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/simlock/activity/SimLockPinActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->G0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/simlock/activity/SimLockPinActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/simlock/activity/SimLockPinActivity;->H0()V

    return-void
.end method

.method static synthetic k0(Lcom/miui/simlock/activity/SimLockPinActivity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->m:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/simlock/activity/SimLockPinActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->r:I

    return p0
.end method

.method static synthetic m0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/simlock/activity/SimLockPinActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->s:I

    return p0
.end method

.method static synthetic o0(Lcom/miui/simlock/activity/SimLockPinActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->p:I

    return p0
.end method

.method static synthetic p0(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->V0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q0(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->T0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r0(Lcom/miui/simlock/activity/SimLockPinActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->t:I

    return p1
.end method

.method static synthetic s0(Lcom/miui/simlock/activity/SimLockPinActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->P0(Z)V

    return-void
.end method

.method private showKeyboard(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lgg/g;

    invoke-direct {v0, p0, p1}, Lgg/g;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;Landroid/view/View;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic t0(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic u0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic v0(Lcom/miui/simlock/activity/SimLockPinActivity;)Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->x:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object p0
.end method

.method static synthetic w0(Lcom/miui/simlock/activity/SimLockPinActivity;)Lmiui/telephony/SubscriptionManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->j:Lmiui/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic x0(Lcom/miui/simlock/activity/SimLockPinActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->w:Z

    return p1
.end method

.method static synthetic y0(Lcom/miui/simlock/activity/SimLockPinActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    return p0
.end method

.method static synthetic z0(Lcom/miui/simlock/activity/SimLockPinActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    return p1
.end method


# virtual methods
.method protected initView()V
    .locals 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->g:Lmiuix/appcompat/app/ActionBar;

    invoke-static {p0, v0}, Lcom/miui/simlock/c;->b(Landroid/content/Context;Lmiuix/appcompat/app/ActionBar;)V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->g:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    const v0, 0x7f0b0b94

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f0b0a88

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0973

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0778

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0273

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->z:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->f:Landroid/widget/Button;

    new-instance v1, Lgg/f;

    invoke-direct {v1, p0}, Lgg/f;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a24

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->showKeyboard(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pin_state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->p:I

    iput v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    if-eqz p1, :cond_1

    const-string v0, "mUIFunctionState"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    const-string v0, "key_input"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->a:Ljava/lang/String;

    const-string v0, "key_slot_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "slot_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->D0(Ljava/util/ArrayList;)V

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->j:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->l:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const-string v0, "SimLockPinActivity"

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->i:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    const/4 v4, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_2

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-static {p1, v4}, Lfg/f;->a(Landroid/telephony/TelephonyManager;I)I

    move-result v4

    :cond_2
    :try_start_0
    invoke-static {v4}, Lr1/a;->a(I)Lr1/a;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown sim state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lr1/a;->a:Lr1/a;

    :goto_2
    iget-object v5, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->m:Ljava/util/Map;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfg/e;

    if-nez v5, :cond_3

    new-instance v5, Lfg/e;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-direct {v5, v4, v6, v7}, Lfg/e;-><init>(Lr1/a;II)V

    iget-object v4, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->m:Ljava/util/Map;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iput-object v4, v5, Lfg/e;->a:Lr1/a;

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate init SimData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->r:I

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->j:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result p1

    iput p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->s:I

    :cond_5
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->y:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1, p1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimLockPinActivity::onCreate::mFlowFunctionState = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->p:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentSlotId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->r:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentSubId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->s:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/simlock/activity/SimLockPinActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->h:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->j:Lmiui/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->x:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->F0(Landroid/os/IBinder;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "slot_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->D0(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->o:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->P0(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->q:I

    const-string v1, "mUIFunctionState"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_input"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity;->k:Ljava/util/ArrayList;

    const-string v1, "key_slot_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
