.class public final synthetic Lcom/miui/antivirus/whitelist/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

.field public final synthetic b:Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;

.field public final synthetic c:Lcom/miui/antivirus/whitelist/c;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;Lcom/miui/antivirus/whitelist/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/a;->a:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

    iput-object p2, p0, Lcom/miui/antivirus/whitelist/a;->b:Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;

    iput-object p3, p0, Lcom/miui/antivirus/whitelist/a;->c:Lcom/miui/antivirus/whitelist/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/a;->a:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/a;->b:Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;

    iget-object v2, p0, Lcom/miui/antivirus/whitelist/a;->c:Lcom/miui/antivirus/whitelist/c;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->k(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;Lcom/miui/antivirus/whitelist/c;Landroid/view/View;)V

    return-void
.end method
