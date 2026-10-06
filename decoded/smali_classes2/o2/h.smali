.class public Lo2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121400

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo2/h;->c:Ljava/lang/String;

    return-void
.end method

.method public static A(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static B(Ljava/lang/String;)V
    .locals 1

    const-string v0, "toggle_engine_one"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static C(I)V
    .locals 1

    const-string v0, "key_delte_gameunion_file_frequency"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static D(Z)V
    .locals 1

    const-string v0, "key_first_enter_antivirus_v3"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static E(Z)V
    .locals 1

    const-string v0, "key_free_wifi_alert"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static F(J)V
    .locals 1

    const-string v0, "key_last_cloud_data_update_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static G(J)V
    .locals 1

    const-string v0, "key_last_delete_gameunion_file_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static H(Lw2/r;)V
    .locals 1

    invoke-virtual {p0}, Lw2/r;->c()I

    move-result p0

    const-string v0, "key_pay_safety_status"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static I(I)V
    .locals 1

    const-string v0, "key_last_scan_risk_count"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static J(I)V
    .locals 1

    const-string v0, "key_last_scan_virus_count"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static K(J)V
    .locals 2

    const-string v0, "key_latest_virus_scan_date"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p0, p1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static L(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key_safepay_monitored_activity_list"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static M(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key_safepay_monitored_apps_list"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static N(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "key_not_remind_antifraud"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static O(Z)V
    .locals 1

    const-string v0, "key_do_not_remind_unshelf_pay_dialog"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static P(Z)V
    .locals 1

    const-string v0, "key_safepay_auto_scan_state"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Q(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_anti_fraud_reject_permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static R(Z)V
    .locals 1

    const-string v0, "key_check_item_root"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static S(Z)V
    .locals 1

    const-string v0, "key_safepay_input_method_state"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static T(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key_safepay_sign_exception"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static U(Z)V
    .locals 1

    const-string v0, "key_check_item_update"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static V(Z)V
    .locals 1

    sget-object v0, Lo2/h;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static W(Z)V
    .locals 1

    const-string v0, "PREF_KEY_WHITELIST_HAS_APP"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static X(Z)V
    .locals 1

    const-string v0, "key_check_item_wifi"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_safepay_wifi_scan_result"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_anti_fraud_packages"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const-string v0, "toggle_engine_one"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object v0

    invoke-virtual {v0}, Lo2/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/h;->B(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static c()I
    .locals 2

    const-string v0, "key_delte_gameunion_file_frequency"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 2

    const-string v0, "key_free_wifi_alert"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()J
    .locals 3

    const-string v0, "key_last_cloud_data_update_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f()J
    .locals 3

    const-string v0, "key_last_delete_gameunion_file_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()Lw2/r;
    .locals 2

    invoke-static {}, Lw2/r;->b()Lw2/r;

    move-result-object v0

    invoke-virtual {v0}, Lw2/r;->c()I

    move-result v0

    const-string v1, "key_pay_safety_status"

    invoke-static {v1, v0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lw2/r;->a(I)Lw2/r;

    move-result-object v0

    return-object v0
.end method

.method public static h()I
    .locals 2

    const-string v0, "key_last_scan_risk_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i()I
    .locals 2

    const-string v0, "key_last_scan_virus_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo2/h;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {p0}, Lw2/t;->n(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lo2/h;->b:Ljava/util/ArrayList;

    :cond_0
    sget-object p0, Lo2/h;->b:Ljava/util/ArrayList;

    const-string v0, "key_safepay_monitored_activity_list"

    invoke-static {v0, p0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo2/h;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {p0}, Lw2/t;->o(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lo2/h;->a:Ljava/util/ArrayList;

    :cond_0
    sget-object p0, Lo2/h;->a:Ljava/util/ArrayList;

    const-string v0, "key_safepay_monitored_apps_list"

    invoke-static {v0, p0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static l()Z
    .locals 2

    const-string v0, "key_risk_application_warning_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_safepay_sign_exception"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    const-string v0, "key_safepay_wifi_scan_result"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static p()Z
    .locals 2

    const-string v0, "key_first_enter_antivirus_v3"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "key_not_remind_antifraud"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static r()Z
    .locals 2

    const-string v0, "key_safepay_auto_scan_state"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_anti_fraud_reject_permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static t()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "key_check_item_root"

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static u()Z
    .locals 2

    const-string v0, "key_safepay_input_method_state"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static v()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "key_check_item_update"

    invoke-static {v1, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w()Z
    .locals 2

    sget-object v0, Lo2/h;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static x()Z
    .locals 2

    const-string v0, "PREF_KEY_WHITELIST_HAS_APP"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static y()Z
    .locals 2

    const-string v0, "key_check_item_wifi"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static z(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key_anti_fraud_packages"

    invoke-static {v0, p0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
