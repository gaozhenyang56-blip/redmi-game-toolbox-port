.class public final Lcom/miui/autotask/common/PolarisGeofenceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autotask/common/PolarisGeofenceReceiver$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/autotask/common/PolarisGeofenceReceiver$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DATA:Ljava/lang/String; = "context-data"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_EVENT:Ljava/lang/String; = "transition-event"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/autotask/common/PolarisGeofenceReceiver$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/autotask/common/PolarisGeofenceReceiver$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/autotask/common/PolarisGeofenceReceiver;->Companion:Lcom/miui/autotask/common/PolarisGeofenceReceiver$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_5

    const-string p1, "context-data"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "it.getStringExtra(KEY_DATA) ?: \"\""

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "transition-event"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230 MiGeofenceId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeofenceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "auto_task_"

    invoke-static {p1, v3, v0, v1, v2}, Ljk/f;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/autotask/common/a;->j:Lcom/miui/autotask/common/a$a;

    invoke-virtual {v0, p1}, Lcom/miui/autotask/common/a$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/16 v0, 0xb

    if-eq p2, v0, :cond_4

    const/16 v0, 0xc

    if-eq p2, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object p2

    const/16 v0, 0x414

    goto :goto_0

    :cond_4
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object p2

    const/16 v0, 0x413

    :goto_0
    invoke-virtual {p2, p1, v0}, Lu3/h;->N(Ljava/lang/String;I)V

    :cond_5
    :goto_1
    return-void
.end method
