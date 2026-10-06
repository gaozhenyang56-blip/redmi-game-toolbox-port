.class public final Lcom/gzy/redmidiag/CrashReportActivity;
.super Landroid/app/Activity;
.source "CrashReportActivity.java"


# instance fields
.field current:Ljava/lang/String;

.field report:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/gzy/redmidiag/CrashReportActivity;->current:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method synthetic lambda$0$com-gzy-redmidiag-CrashReportActivity(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/gzy/redmidiag/CrashReportActivity;->refresh()V

    return-void
.end method

.method synthetic lambda$1$com-gzy-redmidiag-CrashReportActivity(Landroid/view/View;)V
    .locals 2

    .line 5
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Lcom/gzy/redmidiag/CrashReportActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string v0, "crash"

    iget-object v1, p0, Lcom/gzy/redmidiag/CrashReportActivity;->current:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "\u5df2\u590d\u5236"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$2$com-gzy-redmidiag-CrashReportActivity(Landroid/view/View;)V
    .locals 2

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    const-string v1, "redmi-crash.txt"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/gzy/redmidiag/CrashReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/gzy/redmidiag/CrashReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    iget-object p2, p0, Lcom/gzy/redmidiag/CrashReportActivity;->current:Ljava/lang/String;

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    const-string p1, "\u5df2\u5bfc\u51fa"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5bfc\u51fa\u5931\u8d25\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x18

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5237\u65b0\u5d29\u6e83\u65e5\u5fd7"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/gzy/redmidiag/CrashReportActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/gzy/redmidiag/CrashReportActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gzy/redmidiag/CrashReportActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u590d\u5236\u65e5\u5fd7"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/gzy/redmidiag/CrashReportActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/gzy/redmidiag/CrashReportActivity$$ExternalSyntheticLambda1;-><init>(Lcom/gzy/redmidiag/CrashReportActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5bfc\u51fa\u4e3a TXT"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/gzy/redmidiag/CrashReportActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/gzy/redmidiag/CrashReportActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gzy/redmidiag/CrashReportActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gzy/redmidiag/CrashReportActivity;->report:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gzy/redmidiag/CrashReportActivity;->report:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/gzy/redmidiag/CrashReportActivity;->report:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/gzy/redmidiag/CrashReportActivity;->report:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    invoke-direct {v0, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/gzy/redmidiag/CrashReportActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/gzy/redmidiag/CrashReportActivity;->refresh()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/gzy/redmidiag/CrashReportActivity;->report:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/gzy/redmidiag/CrashReportActivity;->refresh()V

    :cond_0
    return-void
.end method

.method refresh()V
    .locals 2

    .line 7
    invoke-static {p0}, Lcom/gzy/redmidiag/CrashReporter;->read(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gzy/redmidiag/CrashReportActivity;->current:Ljava/lang/String;

    iget-object v0, p0, Lcom/gzy/redmidiag/CrashReportActivity;->report:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gzy/redmidiag/CrashReportActivity;->current:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
