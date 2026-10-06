.class Lcom/miui/antivirus/activity/MainActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MainActivity;->O1(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$f;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$f;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->W0(Lcom/miui/antivirus/activity/MainActivity;)V

    const-string p1, "continue"

    invoke-static {p1}, Lq2/b$a;->j(Ljava/lang/String;)V

    return-void
.end method
