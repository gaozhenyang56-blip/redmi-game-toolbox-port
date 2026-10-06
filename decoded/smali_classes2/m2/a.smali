.class public final Lm2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm2/a$c;,
        Lm2/a$e;,
        Lm2/a$d;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "antispam_action_source"

.field public static b:Ljava/lang/String; = "action_source_sms"

.field public static c:Ljava/lang/String; = "action_source_call"

.field public static d:Ljava/lang/String; = "action_source_other"

.field public static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm2/a$a;

    invoke-direct {v0}, Lm2/a$a;-><init>()V

    sput-object v0, Lm2/a;->e:Ljava/util/HashMap;

    new-instance v0, Lm2/a$b;

    invoke-direct {v0}, Lm2/a$b;-><init>()V

    sput-object v0, Lm2/a;->f:Ljava/util/HashMap;

    return-void
.end method

.method public static A(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sms_classifier_auto_update"

    invoke-static {p0, v0, p1}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static B(Landroid/content/Context;J)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sms_classifier_update_time"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static C(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static D([Ljava/lang/Integer;)[I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [I

    return-object p0

    :cond_1
    array-length v0, p0

    new-array v0, v0, [I

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 0

    invoke-static {p0, p1}, Lm2/j;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)I
    .locals 1

    sget-object v0, Lm2/a;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "show_notification_type"

    goto :goto_0

    :cond_0
    const-string p1, "show_notification_type_sim_2"

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sms_classifier_update_time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "virtual_sim_slot_id"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lam/a;->c(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "has_new_antispam"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p0}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/4 v4, 0x2

    if-nez v0, :cond_6

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p0, v1}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, v4}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    return v1

    :cond_6
    :goto_3
    invoke-static {p0, v1}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v0, :cond_9

    :cond_7
    invoke-static {p0, v4}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :cond_9
    :goto_4
    return v1
.end method

.method public static j(Landroid/content/Context;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "antispam_enable_for_sim_1"

    goto :goto_0

    :cond_0
    const-string p1, "antispam_enable_for_sim_2"

    :goto_0
    invoke-static {p0, p1, v0}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "antispam_settings_shared_for_sims"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static l(Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const-string p1, "fraud_num_state"

    invoke-static {p0, p1, v1}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "agent_num_state"

    invoke-static {p0, p1, v1}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "sell_num_state"

    invoke-static {p0, p1, v1}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    const-string p1, "fraud_num_state_sim_2"

    invoke-static {p0, p1, v1}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "agent_num_state_sim_2"

    invoke-static {p0, p1, v1}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "sell_num_state_sim_2"

    invoke-static {p0, p1, v1}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lm2/a;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sms_classifier_auto_update"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lam/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static o()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static p()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lx4/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "virtual_sim_imsi"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lam/a;->e(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static r(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "mark_guide_harass"

    return-object p0

    :cond_1
    const-string p0, "mark_guide_sell"

    return-object p0

    :cond_2
    const-string p0, "mark_guide_agent"

    return-object p0

    :cond_3
    const-string p0, "mark_guide_fraud"

    return-object p0
.end method

.method public static s(Landroid/content/Context;)V
    .locals 2

    const-string v0, "fraud_num_state"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "agent_num_state"

    invoke-static {p0, v0, v1}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "sell_num_state"

    invoke-static {p0, v0, v1}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "harass_num_state"

    invoke-static {p0, v0, v1}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "fraud_num_state_sim_2"

    invoke-static {p0, v0, v1}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "agent_num_state_sim_2"

    invoke-static {p0, v0, v1}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "sell_num_state_sim_2"

    invoke-static {p0, v0, v1}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "harass_num_state_sim_2"

    invoke-static {p0, v0, v1}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static t(Landroid/content/Context;IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "antispam_enable_for_sim_1"

    goto :goto_0

    :cond_0
    const-string p1, "antispam_enable_for_sim_2"

    :goto_0
    invoke-static {p0, p1, p2}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static u(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "antispam_settings_shared_for_sims"

    invoke-static {p0, v0, p1}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static v(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "has_new_antispam"

    invoke-static {p0, v0, p1}, Lam/a;->g(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static w(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "mark_guide_is_set"

    invoke-static {p0, v0, p1}, Lm2/a;->C(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lm2/a;->C(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static z(Landroid/content/Context;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p2, "show_notification_type"

    goto :goto_0

    :cond_0
    const-string p2, "show_notification_type_sim_2"

    :goto_0
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
