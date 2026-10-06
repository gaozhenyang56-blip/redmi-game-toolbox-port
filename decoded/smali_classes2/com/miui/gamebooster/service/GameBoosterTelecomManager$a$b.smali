.class Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;->t2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;

    iget-object v0, v0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$a;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;->g()V

    return-void
.end method
