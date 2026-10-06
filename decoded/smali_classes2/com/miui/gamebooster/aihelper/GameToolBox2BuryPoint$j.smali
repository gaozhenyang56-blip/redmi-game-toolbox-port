.class final Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$j;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$j;

    invoke-direct {v0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$j;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$j;->a:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$j;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "persist.security.gbbplog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$j;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
