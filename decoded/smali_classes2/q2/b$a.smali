.class public Lq2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lq2/b$a;->a:Landroid/util/ArrayMap;

    const-string v1, "00001"

    const-string v2, "SecurityCenter_home"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lq2/b$a;->a:Landroid/util/ArrayMap;

    const-string v1, "00002"

    const-string v2, "CleanMaster_rs"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lq2/b$a;->a:Landroid/util/ArrayMap;

    const-string v1, "00003"

    const-string v2, "launcher"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a()V
    .locals 1

    const-string v0, "title_click"

    invoke-static {v0}, Lq2/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 1

    const-string v0, "query"

    invoke-static {v0}, Lq2/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static c()V
    .locals 1

    const-string v0, "title_show"

    invoke-static {v0}, Lq2/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "update_result"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "TENCENT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "ns_tencent_update"

    :goto_0
    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    const-string p1, "AVL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ns_antiy_update"

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "dange_click"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "dange_notify"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "dange_uninstall"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static h()V
    .locals 1

    const-string v0, "ns_activity_dislike"

    invoke-static {v0}, Lq2/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "kddi_privacy_dialog_show_click"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_update_popup2_click"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static k()V
    .locals 1

    const-string v0, "ns_start_scan"

    invoke-static {v0}, Lq2/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "scan_action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_scan_action"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "update_result"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_update_popup_result"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "enter_way"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "antivirus_enter_way"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_update_popup1_click"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static p(J)V
    .locals 1

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-long p0, p0

    const-string v0, "ns_scan_time_foreground"

    invoke-static {v0, p0, p1}, Lq2/b;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "settings_item_click"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_update_popup_click"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_homepage_default_action"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static t(J)V
    .locals 1

    const-string v0, "ns_risk_apps_num"

    invoke-static {v0, p0, p1}, Lq2/b;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public static u(J)V
    .locals 1

    const-string v0, "ns_apps_num"

    invoke-static {v0, p0, p1}, Lq2/b;->c(Ljava/lang/String;J)V

    return-void
.end method
