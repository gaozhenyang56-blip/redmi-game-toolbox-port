.class final Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$o;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$o;

    invoke-direct {v0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$o;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$o;->a:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$o;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, La8/u0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5b8c\u6574\u72b6\u6001"

    goto :goto_0

    :cond_0
    const-string v0, "\u7cbe\u7b80\u6a21\u5f0f"

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$o;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
