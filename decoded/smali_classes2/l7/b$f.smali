.class Ll7/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/b;->h(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;Ll7/b$j;)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/appcompat/app/AlertDialog;

.field final synthetic b:Landroid/view/View$OnClickListener;

.field final synthetic c:Ll7/b;


# direct methods
.method constructor <init>(Ll7/b;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Ll7/b$f;->c:Ll7/b;

    iput-object p2, p0, Ll7/b$f;->a:Lmiuix/appcompat/app/AlertDialog;

    iput-object p3, p0, Ll7/b$f;->b:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Ll7/b$f;->a:Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Ll7/b$f;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
