.class Lcom/miui/antivirus/activity/MainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MainActivity;->t1(Lcom/miui/antivirus/model/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/model/d;

.field final synthetic b:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$a;->b:Lcom/miui/antivirus/activity/MainActivity;

    iput-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$a;->a:Lcom/miui/antivirus/model/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$a;->b:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->P0(Lcom/miui/antivirus/activity/MainActivity;)Lo2/g;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p1, p2}, Lo2/g;->m0(Lcom/miui/antivirus/model/d;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$a;->b:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->P0(Lcom/miui/antivirus/activity/MainActivity;)Lo2/g;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p2}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo2/g;->h0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$a;->b:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->d0(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {}, Lq2/b$b;->A()V

    return-void
.end method
