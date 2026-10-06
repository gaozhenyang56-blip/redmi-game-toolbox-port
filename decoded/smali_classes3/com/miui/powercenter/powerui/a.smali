.class public final Lcom/miui/powercenter/powerui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/powerui/a$a;,
        Lcom/miui/powercenter/powerui/a$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChargingHotWarningUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargingHotWarningUtils.kt\ncom/miui/powercenter/powerui/ChargingHotWarningUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lcom/miui/powercenter/powerui/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/powerui/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/powercenter/powerui/a$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/powercenter/powerui/a;->c:Lcom/miui/powercenter/powerui/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/powercenter/powerui/a$c;->a:Lcom/miui/powercenter/powerui/a$c;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/powerui/a;->a:Loj/f;

    sget-object v0, Lcom/miui/powercenter/powerui/a$d;->a:Lcom/miui/powercenter/powerui/a$d;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/powerui/a;->b:Loj/f;

    return-void
.end method

.method private final a(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.MIUI_PC_BATTERY_CHANGED"

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static final b()Lcom/miui/powercenter/powerui/a;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/powercenter/powerui/a;->c:Lcom/miui/powercenter/powerui/a$a;

    invoke-virtual {v0}, Lcom/miui/powercenter/powerui/a$a;->a()Lcom/miui/powercenter/powerui/a;

    move-result-object v0

    return-object v0
.end method

.method private final d()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/powerui/a;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method private final f()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/powerui/a;->a:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final c(Landroid/content/Intent;)I
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/powercenter/powerui/a;->a(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v0, "miui.intent.extra.EXTRA_NTC_ALARM"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public final e()V
    .locals 3

    sget-object v0, Laf/b;->e:Laf/b$a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Laf/b$a;->a(Landroid/content/Context;)Laf/b;

    move-result-object v0

    const/16 v1, 0xa5

    const/16 v2, 0xcf

    invoke-virtual {v0, v1, v2}, Laf/b;->c(II)V

    invoke-direct {p0}, Lcom/miui/powercenter/powerui/a;->d()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/powerui/a;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lde/j;->H(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string v0, "ChargingHotWarning_Utils"

    const-string v1, "The sound file does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is device support NFC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/powercenter/powerui/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChargingHotWarning_Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powercenter/powerui/a;->f()Z

    move-result v0

    return v0
.end method

.method public final h(J)V
    .locals 10

    const-string v0, ","

    const-string v1, "ChargingHotWarning_Utils"

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Lce/c;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lastShowTime"

    invoke-static {v3, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v0, v9, v4, v5}, Ljk/f;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ljk/f;->f0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lx4/x1;->c(J)I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save times = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lce/c;->h(Ljava/lang/String;)V

    return-void
.end method
