.class public Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Landroid/content/pm/PackageInfo;

.field public h:Landroid/app/PendingIntent;

.field public i:Landroid/app/PendingIntent;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field private m:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->m:F

    return-void
.end method

.method private j0(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "callingPackage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->d:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->g:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "callingUid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->e:I

    const-string v0, "callingAttributionTag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->f:Ljava/lang/String;

    const-string v0, "destAddr"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->j:Ljava/lang/String;

    const-string v0, "scAddr"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->k:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->l:Ljava/lang/String;

    const-string v0, "sentIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->h:Landroid/app/PendingIntent;

    const-string v0, "deliveryIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->i:Landroid/app/PendingIntent;

    return-void

    :catch_0
    move-exception p1

    const-string v0, "SendSmsVerificationActivity"

    const-string v1, "calling package not found!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->g:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0472

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b08ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080e5b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0b08ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121616

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->g:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b08b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1216d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1216ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lrb/a;

    invoke-direct {v2, p0}, Lrb/a;-><init>(Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f121b80

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f121b7f

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void

    :cond_1
    :goto_0
    const-string p1, "SendSmsVerificationActivity"

    const-string v0, "createDialog: mCallingPackageInfo or applicationInfo is empty"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected f0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->j0(Landroid/content/Intent;)V

    return-void
.end method

.method protected g0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->g0(Lmiuix/appcompat/app/AlertDialog;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/miui/common/base/AlertActivity;->h0()V

    return-void
.end method

.method protected i0(Landroid/widget/TextView;Z)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p1

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-ne v1, v0, :cond_0

    move p1, v2

    :cond_0
    return p1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    return p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16

    move-object/from16 v1, p0

    const-class v0, Ljava/lang/String;

    const/4 v2, -0x1

    move/from16 v3, p2

    if-ne v2, v3, :cond_0

    const/16 v2, 0x9

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const/4 v6, 0x2

    aput-object v0, v3, v6

    const-class v7, Landroid/app/PendingIntent;

    const/4 v8, 0x3

    aput-object v7, v3, v8

    const-class v7, Landroid/app/PendingIntent;

    const/4 v9, 0x4

    aput-object v7, v3, v9

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x5

    aput-object v7, v3, v10

    const/4 v7, 0x6

    aput-object v0, v3, v7

    const/4 v11, 0x7

    aput-object v0, v3, v11

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v12, 0x8

    aput-object v0, v3, v12

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v14, "sendTextMessageInternal"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v15, v1, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->j:Ljava/lang/String;

    aput-object v15, v2, v4

    iget-object v4, v1, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->k:Ljava/lang/String;

    aput-object v4, v2, v5

    iget-object v4, v1, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->l:Ljava/lang/String;

    aput-object v4, v2, v6

    iget-object v4, v1, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->h:Landroid/app/PendingIntent;

    aput-object v4, v2, v8

    iget-object v4, v1, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->i:Landroid/app/PendingIntent;

    aput-object v4, v2, v9

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v10

    const-string v4, "com.miui.securitycore"

    aput-object v4, v2, v7

    iget-object v4, v1, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->f:Ljava/lang/String;

    aput-object v4, v2, v11

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v12

    invoke-static {v0, v13, v14, v3, v2}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->m:F

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->m:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->i0(Landroid/widget/TextView;Z)Z

    move-result v2

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->m:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x43be0000    # 380.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3}, Lcom/miui/permcenter/ctaverify/SendSmsVerificationActivity;->i0(Landroid/widget/TextView;Z)Z

    move-result v2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    return v3
.end method
