.class public final Lcom/miui/electricrisk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.tencent.mm"

    const-string v1, "com.tencent.mobileqq"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqj/l;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/electricrisk/f;->a:Ljava/util/List;

    const-string v0, "com.miui.guardprovider/.aiguard.AlertActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/miui/electricrisk/f;->b:Landroid/content/ComponentName;

    const-string v0, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    const-string v1, "com.tencent.av.ui.AVActivity"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqj/l;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/electricrisk/f;->c:Ljava/util/List;

    const-string v0, "com.miui.guardprovider/.aiguard.AiGuardService"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/miui/electricrisk/f;->d:Landroid/content/ComponentName;

    return-void
.end method

.method public static final synthetic a()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/miui/electricrisk/f;->b:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static final synthetic b()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/miui/electricrisk/f;->d:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/electricrisk/f;->c:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/electricrisk/f;->a:Ljava/util/List;

    return-object v0
.end method
