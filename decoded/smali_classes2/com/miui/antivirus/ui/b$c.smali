.class Lcom/miui/antivirus/ui/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/b;->k(Landroid/content/Context;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/miui/antivirus/ui/b;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/b;ZLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/b$c;->d:Lcom/miui/antivirus/ui/b;

    iput-boolean p2, p0, Lcom/miui/antivirus/ui/b$c;->a:Z

    iput-object p3, p0, Lcom/miui/antivirus/ui/b$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/antivirus/ui/b$c;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/antivirus/ui/b$c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/b$c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo2/h;->N(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/b$c;->d:Lcom/miui/antivirus/ui/b;

    iget-object v1, p0, Lcom/miui/antivirus/ui/b$c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/antivirus/ui/b$c;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/antivirus/ui/b;->b(Lcom/miui/antivirus/ui/b;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
