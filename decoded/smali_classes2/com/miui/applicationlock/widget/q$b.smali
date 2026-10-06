.class Lcom/miui/applicationlock/widget/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/widget/q;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/widget/q;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/q;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/q$b;->a:Lcom/miui/applicationlock/widget/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q$b;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/q;->n(Lcom/miui/applicationlock/widget/q;)Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q$b;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/q;->o(Lcom/miui/applicationlock/widget/q;)Lc3/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lc3/g;->d(Landroid/text/Editable;)V

    :cond_0
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
