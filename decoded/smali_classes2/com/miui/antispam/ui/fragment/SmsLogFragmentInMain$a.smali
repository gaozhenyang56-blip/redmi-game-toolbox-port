.class Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$a;->b:Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lm2/f;->G(Landroid/content/Context;)V

    return-void
.end method
