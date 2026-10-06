.class public Lcom/miui/antivirus/ui/e;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public a:Lmiuix/appcompat/app/AlertDialog;

.field protected b:Lw4/e;

.field protected c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/ui/e;Lcom/miui/antivirus/model/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/ui/e;->b(Lcom/miui/antivirus/model/a;Landroid/content/Context;)V

    return-void
.end method

.method private b(Lcom/miui/antivirus/model/a;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f121704

    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/miui/antivirus/ui/e$b;

    invoke-direct {v0, p0, p1}, Lcom/miui/antivirus/ui/e$b;-><init>(Lcom/miui/antivirus/ui/e;Lcom/miui/antivirus/model/a;)V

    const p1, 0x104000a

    invoke-virtual {p2, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/ui/e;->a:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public c(Lcom/miui/antivirus/model/a;Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f120474

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/miui/antivirus/ui/e$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/antivirus/ui/e$a;-><init>(Lcom/miui/antivirus/ui/e;Lcom/miui/antivirus/model/a;Landroid/content/Context;)V

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/ui/e;->a:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setEventHandler(Lw4/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/e;->b:Lw4/e;

    return-void
.end method
