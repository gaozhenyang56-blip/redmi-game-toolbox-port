.class public Lcom/miui/autotask/taskitem/AbsorbedResultItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# static fields
.field public static final FLAG_MIUI_CANCEL_SPLIT:I = 0x8

.field private static final FOCUS_MODE_LAND_CLASS_NAME:Ljava/lang/String; = "com.xiaomi.misettings.usagestats.focusmode.land.FocusModeTimingLandActivity"

.field private static final FOCUS_MODE_PKG_NAME:Ljava/lang/String; = "com.xiaomi.misettings"

.field private static final FOCUS_MODE_PORT_CLASS_NAME:Ljava/lang/String; = "com.xiaomi.misettings.usagestats.focusmode.port.FocusModeTimingPortActivity"

.field public static final KEY_FOCUS_TIME_INDEX:Ljava/lang/String; = "keyFocusModeTimeIndex"

.field public static final LOCK_30_MIN:I = 0x1e

.field public static final LOCK_60_MIN:I = 0x3c

.field public static final LOCK_90_MIN:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "TaskItem_AbsorbedResultItem"


# instance fields
.field private focusTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    return-void
.end method

.method public static v(Landroid/content/Intent;I)V
    .locals 6

    :try_start_0
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addMiuiFlags"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0803bf

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0803be

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_absorbed_result_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->w()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->w()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100136

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a47

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f0803c0

    return v0
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->w()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    const-string v3, "com.xiaomi.misettings"

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.xiaomi.misettings.usagestats.focusmode.land.FocusModeTimingLandActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.xiaomi.misettings.usagestats.focusmode.port.FocusModeTimingPortActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->w()I

    move-result v2

    const-string v3, "keyFocusModeTimeIndex"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->v(Landroid/content/Intent;I)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "TaskItem_AbsorbedResultItem"

    const-string v2, "startActivity fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->focusTime:I

    return v0
.end method

.method public x()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->w()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public y(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->focusTime:I

    return-void
.end method

.method public z(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x5a

    goto :goto_0

    :cond_1
    const/16 p1, 0x3c

    goto :goto_0

    :cond_2
    const/16 p1, 0x1e

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/AbsorbedResultItem;->y(I)V

    return-void
.end method
