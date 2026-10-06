.class Lcom/miui/gamebooster/service/DockWindowManagerService$i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$i;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService$i;->c(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$i;->d(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/String;ZI)V
    .locals 1

    invoke-static {}, Lf5/v;->d()Lf5/v;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lf5/v;->k(Ljava/lang/String;ZI)V

    return-void
.end method

.method private static synthetic d(Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lf5/v;->d()Lf5/v;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "pkgName"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isInstalled"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lf5/v;->i(ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p1, v2

    goto :goto_1

    :sswitch_0
    const-string v0, "com.miui.dock.SHOW_DOCK_TIPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "com.miui.gamebooster.PPRIVACYAPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "com.android.systemui.fsgesture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "com.miui.gamebooster.UNINSTALLAPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v1

    goto :goto_1

    :sswitch_5
    const-string v0, "com.miui.dock.DOCK_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v3

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "event_dock_tips_type"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$i;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;

    move-result-object p2

    invoke-virtual {p2}, Lo7/a;->e()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$i;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$i;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->C(Lcom/miui/gamebooster/service/DockWindowManagerService;I)V

    goto :goto_2

    :pswitch_1
    const-string p1, "pkgName"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "isPrivacy"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    const-string v2, "userId"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/service/n;

    invoke-direct {v2, p1, v0, p2}, Lcom/miui/gamebooster/service/n;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2}, Lef/z;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$i;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->A(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v0, Lcom/miui/gamebooster/service/o;

    invoke-direct {v0, p2}, Lcom/miui/gamebooster/service/o;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    :pswitch_4
    const-string p1, "miui.intent.extra.input_method_visible_height"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$i;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->B(Lcom/miui/gamebooster/service/DockWindowManagerService;I)V

    goto :goto_2

    :pswitch_5
    const-string p1, "isExit"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "mode"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tisExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$i;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->k0(I)V

    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62290ce6 -> :sswitch_5
        0x23b533ee -> :sswitch_4
        0x386cdde0 -> :sswitch_3
        0x4386c31d -> :sswitch_2
        0x4c3f29e8 -> :sswitch_1
        0x74dfba2c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
