.class Lcom/miui/applicationlock/widget/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/widget/n;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/widget/n;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/n$b;->a:Lcom/miui/applicationlock/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n$b;->a:Lcom/miui/applicationlock/widget/n;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/n;->j(Lcom/miui/applicationlock/widget/n;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n$b;->a:Lcom/miui/applicationlock/widget/n;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/n;->k(Lcom/miui/applicationlock/widget/n;)Lc3/g;

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
