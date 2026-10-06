.class Lcom/miui/antivirus/activity/SignExceptionActivity$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/SignExceptionActivity$c;->m(Lcom/miui/antivirus/activity/SignExceptionActivity$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/SignExceptionActivity$b;

.field final synthetic b:Lcom/miui/antivirus/activity/SignExceptionActivity$c;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SignExceptionActivity$c;Lcom/miui/antivirus/activity/SignExceptionActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c$b;->b:Lcom/miui/antivirus/activity/SignExceptionActivity$c;

    iput-object p2, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c$b;->a:Lcom/miui/antivirus/activity/SignExceptionActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity$c$b;->a:Lcom/miui/antivirus/activity/SignExceptionActivity$b;

    iget-object p1, p1, Lcom/miui/antivirus/activity/SignExceptionActivity$b;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
