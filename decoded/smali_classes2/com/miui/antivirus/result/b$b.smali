.class Lcom/miui/antivirus/result/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/b;->g(Lcom/miui/antivirus/activity/MainActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PopupWindow;

.field final synthetic b:Lcom/miui/antivirus/activity/MainActivity;

.field final synthetic c:Lcom/miui/antivirus/result/b;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/b;Landroid/widget/PopupWindow;Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/b$b;->c:Lcom/miui/antivirus/result/b;

    iput-object p2, p0, Lcom/miui/antivirus/result/b$b;->a:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/miui/antivirus/result/b$b;->b:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/result/b$b;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/miui/antivirus/result/b$b;->b:Lcom/miui/antivirus/activity/MainActivity;

    iget-object v0, p0, Lcom/miui/antivirus/result/b$b;->c:Lcom/miui/antivirus/result/b;

    invoke-virtual {p1, v0}, Lcom/miui/antivirus/activity/MainActivity;->E1(Lcom/miui/antivirus/result/a;)V

    return-void
.end method
