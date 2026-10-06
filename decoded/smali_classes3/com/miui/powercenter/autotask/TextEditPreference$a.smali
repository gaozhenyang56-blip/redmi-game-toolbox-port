.class Lcom/miui/powercenter/autotask/TextEditPreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/TextEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/autotask/TextEditPreference;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/TextEditPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference$a;->a:Lcom/miui/powercenter/autotask/TextEditPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference$a;->a:Lcom/miui/powercenter/autotask/TextEditPreference;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/TextEditPreference;->d(Lcom/miui/powercenter/autotask/TextEditPreference;)Lcom/miui/powercenter/autotask/TextEditPreference$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference$a;->a:Lcom/miui/powercenter/autotask/TextEditPreference;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/TextEditPreference;->d(Lcom/miui/powercenter/autotask/TextEditPreference;)Lcom/miui/powercenter/autotask/TextEditPreference$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/powercenter/autotask/TextEditPreference$b;->a(Landroid/text/Editable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference$a;->a:Lcom/miui/powercenter/autotask/TextEditPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/powercenter/autotask/TextEditPreference;->e(Lcom/miui/powercenter/autotask/TextEditPreference;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
