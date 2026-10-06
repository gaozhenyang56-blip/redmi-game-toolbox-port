.class Lme/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/c$c;->f(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/c$c;


# direct methods
.method constructor <init>(Lme/c$c;)V
    .locals 0

    iput-object p1, p0, Lme/c$c$a;->a:Lme/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lme/c$c$a;->a:Lme/c$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/c$c;->d(Lme/c$c;Z)Z

    iget-object v0, p0, Lme/c$c$a;->a:Lme/c$c;

    invoke-static {v0}, Lme/c$c;->e(Lme/c$c;)Lcom/miui/powercenter/utils/ChargeInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lme/c$c;->a(Lme/c$c;Lcom/miui/powercenter/utils/ChargeInfo;)V

    return-void
.end method
