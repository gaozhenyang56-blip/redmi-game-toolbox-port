.class Lcom/miui/antivirus/result/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/k;->i(Lcom/miui/antivirus/activity/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/MainActivity;

.field final synthetic b:Lcom/miui/antivirus/result/k;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/k;Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/k$b;->b:Lcom/miui/antivirus/result/k;

    iput-object p2, p0, Lcom/miui/antivirus/result/k$b;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/k$b;->a:Lcom/miui/antivirus/activity/MainActivity;

    iget-object v1, p0, Lcom/miui/antivirus/result/k$b;->b:Lcom/miui/antivirus/result/k;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->E1(Lcom/miui/antivirus/result/a;)V

    invoke-static {}, Lq2/b$a;->h()V

    return-void
.end method
