.class Lcom/miui/antivirus/result/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/b;->s(Lcom/miui/antivirus/activity/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/MainActivity;

.field final synthetic b:Lcom/miui/antivirus/result/b;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/b;Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/b$d;->b:Lcom/miui/antivirus/result/b;

    iput-object p2, p0, Lcom/miui/antivirus/result/b$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/b$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    iget-object v1, p0, Lcom/miui/antivirus/result/b$d;->b:Lcom/miui/antivirus/result/b;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->E1(Lcom/miui/antivirus/result/a;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/b$d;->b:Lcom/miui/antivirus/result/b;

    invoke-static {v0}, Lcom/miui/antivirus/result/b;->b(Lcom/miui/antivirus/result/b;)I

    move-result v0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/b$d;->b:Lcom/miui/antivirus/result/b;

    invoke-static {v0}, Lcom/miui/antivirus/result/b;->b(Lcom/miui/antivirus/result/b;)I

    move-result v0

    const/16 v1, 0x7531

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/b$d;->b:Lcom/miui/antivirus/result/b;

    invoke-static {v0}, Lcom/miui/antivirus/result/b;->b(Lcom/miui/antivirus/result/b;)I

    move-result v0

    const/16 v1, 0x7532

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/b$d;->b:Lcom/miui/antivirus/result/b;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/b;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/b$d;->b:Lcom/miui/antivirus/result/b;

    invoke-static {v1}, Lcom/miui/antivirus/result/b;->c(Lcom/miui/antivirus/result/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/i;->h(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
