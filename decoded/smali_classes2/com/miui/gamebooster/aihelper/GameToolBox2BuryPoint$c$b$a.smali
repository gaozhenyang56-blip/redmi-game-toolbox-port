.class final Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b;->a(Ljava/lang/String;)Lak/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Ljava/lang/Float;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b$a;->a:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 6

    sget-object v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    const/4 v1, 0x3

    new-array v1, v1, [Loj/l;

    const-string v2, "tip"

    const-string v3, "1513.2.7.1.39313"

    invoke-static {v2, v3}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b$a;->a:Ljava/lang/String;

    const-string v3, "secondary_page_name"

    invoke-static {v3, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "stay_time"

    invoke-static {v2, p1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v1}, Lqj/d0;->f([Loj/l;)Ljava/util/Map;

    move-result-object v2

    const-string v1, "expose"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->track$default(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$c$b$a;->a(F)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
