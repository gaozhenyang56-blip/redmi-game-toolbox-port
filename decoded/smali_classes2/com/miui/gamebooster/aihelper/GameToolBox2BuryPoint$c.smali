.class final Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "Ljava/lang/String;",
            "Lak/l<",
            "Ljava/lang/Float;",
            "Loj/t;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->d:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b;->a:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b;

    iput-object v0, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->c:Lak/l;

    instance-of v1, p1, Lcom/miui/gamebooster/windowmanager/newbox/k0;

    if-eqz v1, :cond_0

    const-string v1, "\u6027\u80fd\u914d\u7f6e"

    iput-object v1, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->a:Ljava/lang/String;

    new-instance v2, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;

    invoke-interface {v0, v1}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak/l;

    invoke-direct {v2, p1, v0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;-><init>(Landroid/view/View;Lak/l;)V

    :goto_0
    iput-object v2, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->b:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lcom/miui/gamebooster/aihelper/i;

    if-eqz v1, :cond_1

    const-string v1, "AI\u6e38\u620f\u670d\u52a1"

    iput-object v1, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->a:Ljava/lang/String;

    new-instance v2, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;

    invoke-interface {v0, v1}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak/l;

    invoke-direct {v2, p1, v0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;-><init>(Landroid/view/View;Lak/l;)V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/miui/gamebooster/customview/y;

    if-eqz v1, :cond_2

    const-string v1, "\u53d8\u58f0\u5668"

    iput-object v1, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->a:Ljava/lang/String;

    new-instance v2, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;

    invoke-interface {v0, v1}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak/l;

    invoke-direct {v2, p1, v0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;-><init>(Landroid/view/View;Lak/l;)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/miui/gamebooster/windowmanager/newbox/n;

    if-eqz v1, :cond_3

    const-string v1, "\u66f4\u591a\u5de5\u5177"

    iput-object v1, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->a:Ljava/lang/String;

    new-instance v2, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;

    invoke-interface {v0, v1}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak/l;

    invoke-direct {v2, p1, v0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;-><init>(Landroid/view/View;Lak/l;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/miui/gamebooster/windowmanager/newbox/o;

    const-string v1, "unknown"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lcom/miui/gamebooster/windowmanager/newbox/o;

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/o;->getContentView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_1
    instance-of v0, p1, Lcom/miui/gamebooster/windowmanager/newbox/k;

    if-eqz v0, :cond_5

    const-string p1, "\u663e\u793a\u589e\u5f3a"

    :goto_2
    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lt8/g;

    if-eqz v0, :cond_6

    const-string p1, "\u89e6\u63a7\u589e\u5f3a"

    goto :goto_2

    :cond_6
    instance-of v0, p1, Lt8/b;

    if-eqz v0, :cond_7

    const-string p1, "\u7f51\u7edc\u52a0\u901f"

    goto :goto_2

    :cond_7
    instance-of p1, p1, Lcom/miui/gamebooster/windowmanager/newbox/f;

    if-eqz p1, :cond_8

    const-string p1, "\u6e38\u620f\u97f3\u6548"

    goto :goto_2

    :cond_8
    iput-object v1, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->a:Ljava/lang/String;

    goto :goto_0

    :goto_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->a:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->b:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;

    if-nez v0, :cond_1

    sget-object v1, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    const/4 v0, 0x2

    new-array v0, v0, [Loj/l;

    const/4 v2, 0x0

    const-string v3, "tip"

    const-string v4, "1513.2.8.1.39314"

    invoke-static {v3, v4}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c;->a:Ljava/lang/String;

    const-string v4, "tertiary_page_name"

    invoke-static {v4, v3}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lqj/d0;->f([Loj/l;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "expose"

    invoke-static/range {v1 .. v6}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->track$default(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method
