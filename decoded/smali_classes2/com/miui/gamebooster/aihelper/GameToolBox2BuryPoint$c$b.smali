.class final Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Ljava/lang/String;",
        "Lak/l<",
        "-",
        "Ljava/lang/Float;",
        "+",
        "Loj/t;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b;

    invoke-direct {v0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b;->a:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lak/l;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lak/l<",
            "Ljava/lang/Float;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b$a;

    invoke-direct {v0, p1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b;->a(Ljava/lang/String;)Lak/l;

    move-result-object p1

    return-object p1
.end method
