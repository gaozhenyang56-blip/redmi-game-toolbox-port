.class final Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$m;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->saveAIFunctionStatus(Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/p<",
        "Ljava/util/List<",
        "Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$a;",
        ">;",
        "Lcom/miui/gamebooster/aihelper/AISettingDTO;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$m;

    invoke-direct {v0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$m;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$m;->a:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$m;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/miui/gamebooster/aihelper/AISettingDTO;)Ljava/lang/Boolean;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/gamebooster/aihelper/AISettingDTO;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$a;",
            ">;",
            "Lcom/miui/gamebooster/aihelper/AISettingDTO;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTransformed element = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$log(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateValue()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u5173"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "\u5f00"

    :goto_1
    new-instance v2, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$a;

    invoke-virtual {p2}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    invoke-static {v0, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->needShowMutexSelectable()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateValue()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getDefaultValue()Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    const/4 p2, 0x1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_6

    const-string v4, "\u8bed\u97f3\u63d0\u9192"

    goto :goto_3

    :cond_6
    :goto_2
    const-string v4, "\u5f39\u5e55\u901a\u77e5"

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getThirdValue()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-direct {v2, v3, v0, v4}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/miui/gamebooster/aihelper/AISettingDTO;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$m;->a(Ljava/util/List;Lcom/miui/gamebooster/aihelper/AISettingDTO;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
