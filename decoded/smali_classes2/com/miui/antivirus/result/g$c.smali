.class Lcom/miui/antivirus/result/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/g;->r(Lcom/miui/antivirus/result/g;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/antivirus/result/g;

.field final synthetic c:Lcom/miui/antivirus/result/g;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/g;Landroid/content/Context;Lcom/miui/antivirus/result/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/g$c;->c:Lcom/miui/antivirus/result/g;

    iput-object p2, p0, Lcom/miui/antivirus/result/g$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/antivirus/result/g$c;->b:Lcom/miui/antivirus/result/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antivirus/result/g$c;->a:Landroid/content/Context;

    instance-of p2, p1, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/miui/antivirus/activity/MainActivity;

    iget-object p2, p0, Lcom/miui/antivirus/result/g$c;->b:Lcom/miui/antivirus/result/g;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/activity/MainActivity;->E1(Lcom/miui/antivirus/result/a;)V

    :cond_0
    return-void
.end method
