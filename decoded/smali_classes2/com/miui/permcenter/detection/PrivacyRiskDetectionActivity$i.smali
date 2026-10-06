.class Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltb/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$i;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$i;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 4

    const-class v0, Lcom/miui/permcenter/detection/PrivacyPermissionsSetActivity;

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0x15

    if-eq p1, v2, :cond_a

    const/16 v2, 0x16

    const/16 v3, 0xa

    if-eq p1, v2, :cond_8

    const-string v2, "privacyType"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-ne p3, v3, :cond_1

    invoke-static {}, Lsb/a;->f()V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {v1, p1}, Ljg/a;->e(Landroid/content/Context;Z)V

    invoke-static {}, Lsb/a;->l()V

    goto/16 :goto_0

    :pswitch_1
    if-ne p3, v3, :cond_2

    invoke-static {}, Lsb/a;->e()V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lsb/a;->k()V

    goto/16 :goto_1

    :pswitch_2
    if-ne p3, v3, :cond_3

    invoke-static {}, Lsb/a;->i()V

    goto/16 :goto_0

    :cond_3
    invoke-static {v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->H0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ltb/b;

    move-result-object p1

    invoke-virtual {p1}, Ltb/b;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/detection/model/b;

    invoke-virtual {p1}, Lcom/miui/permcenter/detection/model/b;->a()I

    move-result p1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_d

    const/16 p1, 0x67

    invoke-static {v1, p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->v0(Landroid/app/Activity;I)V

    invoke-static {}, Lsb/a;->o()V

    goto/16 :goto_1

    :pswitch_3
    if-ne p3, v3, :cond_4

    invoke-static {}, Lsb/a;->g()V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->H0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ltb/b;

    move-result-object p1

    invoke-virtual {p1}, Ltb/b;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/permcenter/detection/model/a;

    if-eqz p1, :cond_d

    invoke-static {v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->H0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ltb/b;

    move-result-object p1

    invoke-virtual {p1}, Ltb/b;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/detection/model/a;

    invoke-virtual {p1}, Lcom/miui/permcenter/detection/model/a;->b()Ljava/util/List;

    move-result-object p2

    instance-of p2, p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/miui/permcenter/detection/model/a;->b()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/16 p2, 0x66

    invoke-static {v1, p1, p2}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->i0(Landroid/app/Activity;Ljava/util/ArrayList;I)V

    invoke-static {}, Lsb/a;->m()V

    goto/16 :goto_1

    :pswitch_4
    if-ne p3, v3, :cond_5

    invoke-static {}, Lsb/a;->d()V

    goto :goto_0

    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p2, 0xb

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p2, 0x65

    invoke-virtual {v1, p1, p2}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {}, Lsb/a;->j()V

    goto/16 :goto_1

    :pswitch_5
    if-ne p3, v3, :cond_6

    invoke-static {}, Lsb/a;->h()V

    :goto_0
    invoke-static {v1, p2}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->z0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;I)V

    goto/16 :goto_1

    :cond_6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->w0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-static {v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->w0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/HashMap;

    move-result-object p2

    const-string p3, "privacyData"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_7
    const/16 p2, 0x64

    invoke-virtual {v1, p1, p2}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {}, Lsb/a;->n()V

    goto :goto_1

    :cond_8
    if-ne p3, v3, :cond_9

    goto :goto_0

    :cond_9
    const-string p1, "input_method"

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_1

    :cond_a
    invoke-static {v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->H0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ltb/b;

    move-result-object p1

    invoke-virtual {p1}, Ltb/b;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/detection/model/b;

    invoke-virtual {p1}, Lcom/miui/permcenter/detection/model/b;->a()I

    move-result p1

    if-ne p1, v2, :cond_d

    invoke-static {v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->H0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ltb/b;

    move-result-object p1

    invoke-virtual {p1}, Ltb/b;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/detection/model/c;

    invoke-virtual {p1, v1}, Lcom/miui/permcenter/detection/model/c;->b(Landroid/content/Context;)V

    iget-object p2, p1, Lcom/miui/permcenter/detection/model/c;->f:Ljava/lang/String;

    const-string p3, "miui.intent.action.OP_AUTO_START"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {}, Lsb/a;->a()V

    goto :goto_1

    :cond_b
    iget-object p2, p1, Lcom/miui/permcenter/detection/model/c;->f:Ljava/lang/String;

    const-string p3, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {}, Lsb/a;->b()V

    goto :goto_1

    :cond_c
    iget-object p1, p1, Lcom/miui/permcenter/detection/model/c;->f:Ljava/lang/String;

    const-string p2, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lsb/a;->p()V

    :cond_d
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
